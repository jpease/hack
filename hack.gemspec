Gem::Specification.new do |s|
  s.name = 'hack'
  s.description = "Hack - Convenient git workflow"
  s.summary = s.description
  s.homepage = "http://github.com/jpease/hack/"

  s.version = '0.1.0'
  s.date = '2009-11-19'

  s.authors = ["Justin Pease"]
  s.email = "justin.pease@gmail.com"

  s.files = %w[
    README.md
    hack.gemspec
    bin/hack
    lib/hack/hack.rb
  ]
  s.executables = ['hack']
  s.extra_rdoc_files = %w[README.md]

  s.require_paths = %w[lib]
  s.rubygems_version = '1.3.5'
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

end
