#encoding: UTF-8
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "akatus/version"

Gem::Specification.new do |gem|
  gem.name          = 'akatus'
  gem.version       = Akatus::VERSION
  gem.date          = '2012-01-14'
  gem.summary       = "Akatus Meios de Pagamento"
  gem.description   = "Um client de integração para Akatus Meios de Pagamento"
  gem.authors       = ["Rodrigo Panachi", "Diego Charles"]
  gem.email         = 'desenvolvimento@akatus.com'
  gem.files         = ["lib/akatus.rb"]
  gem.homepage      = 'https://github.com/Akatus/akatus-client'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "rack"
  gem.add_runtime_dependency "httparty"
  gem.add_runtime_dependency "nokogiri"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "factory_girl", "~> 4.2"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "vcr", "~> 2.8.0"
  gem.add_development_dependency "webmock", "~> 1.8.0"

end
