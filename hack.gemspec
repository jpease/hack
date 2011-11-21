Gem::Specification.new do |s|
  s.name = 'hack'
  s.version = '0.1.1'
  s.summary = s.description
  s.description = "Hack - Convenient git workflow"
  s.authors = ["Justin Pease"]
  s.email = "justin.pease@gmail.com"
  s.homepage = "http://github.com/jpease/hack/"

  s.files = %w[
    README.md
    hack.gemspec
    bin/hack
    lib/hack/hack.rb
  ]

  s.executables = ['hack']
  s.extra_rdoc_files = %w[README.md]
  s.require_paths = %w[lib]
end
