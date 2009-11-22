require 'optparse'

class Hack

  def initialize(args, stdin)
    set_current_branch
    parse_commands(args)
  end

  private

  def parse_commands(args)
    @commands = {}
    display_usage("Error: No command supplied") if args.size == 0
    args.each do |arg|
      case arg
        when "on"
          branch = args[1] ? args[1] : 'master'
          switch_to(branch)
          break
        when "sync"
          sync_with_remote
          break
        when "push"
          push_to_remote
          break
        when "sp"
          sync_with_remote
          push_to_remote
          break
        when "stp"
          sync_with_remote
          run_tests
          push_to_remote
          break
        else
          display_usage("Error: That command was not recognized")
      end
    end
  end

  def switch_to(branch)
    `git checkout master` unless @current == 'master'
    `git pull origin master`
    create_branch(branch)
    `git checkout #{branch}`
  end

  def sync_with_remote
    `git checkout master`
    `git pull origin master`
    `git checkout #{@current}`
    `git rebase master`
  end

  def push_to_remote
    `git checkout master`
    `git merge #{@current}`
    `git push origin master`
    `git checkout #{@current}`
  end

  def run_tests(cmd)
    `#{cmd}`
  end

  def set_current_branch
    @current ||= `git branch | grep "*" | awk '{print $2}'`.strip
  end

  def create_branch(branch)
    branches = `git branch`.split
    if branches.include? branch
      puts "Branch #{branch} already exists."
    else
      `git branch #{branch}`
      puts "New branch #{branch} created."
    end
  end

  def display_usage(msg=nil)
    puts "#{msg}\n\n" unless msg.nil?
    puts "Usage:\n\n"
    puts "hack on [branch]\n"
    puts "If no branch is supplied master is used.\n\n"
    puts "hack sync\n"
    puts "Rebase to master branch\n\n"
    puts "hack push\n"
    puts "Merges and pushes to origin master\n\n"
    puts "hack sp\n"
    puts "Shortcut for sync then push\n\n"
    puts "hack stp [test command]\n"
    puts "Shortcut for sync, test then push.  If not test command is provided, it will default to 'rake'."
  end
end

