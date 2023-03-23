# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "data_works/version"

Gem::Specification.new do |s|
  s.name          = "data_works"
  s.version       = DataWorks::VERSION
  s.authors       = ["Wyatt Greene", "Anne Geiersbach", "Dennis Chan", "Luke Inglis"]
  s.email         = ["dev@dmgroupk12.com"]
  s.summary       = %q{Reducing the complexity of testing complex data models }
  s.description   = %q{DataWorks makes it easier to work with FactoryBot in the context of a complex data model.}
  s.homepage      = 'https://github.com/dmcouncil/data_works'
  s.licenses      = ["MIT", "Copyright (c) 2018 District Management Group"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  # Most of the below must match the rails app

  s.required_ruby_version = '>= 3.0.0'

  s.add_dependency 'activerecord', '>= 4.2', '< 8'
  s.add_dependency 'activesupport', '>= 4.2', '< 8'
  s.add_dependency 'factory_bot'
  s.add_dependency 'graphviz', '~> 0' # 1.0 breaks things
  s.add_dependency 'launchy'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'active_hash'
end
