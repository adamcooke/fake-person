Gem::Specification.new do |s|
  s.name          = "fake-person"
  s.description   = %q{A Ruby library for creating fake personalities}
  s.summary       = s.description
  s.homepage      = "https://github.com/adamcooke/fake-person"
  s.licenses      = ['MIT']
  s.version       = "1.0.1"
  s.files         = Dir.glob("{lib,db}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["me@adamcooke.io"]
end
