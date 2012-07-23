# -*- encoding: utf-8 -*-
require File.expand_path('../lib/caterpillar/version', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{caterpillar}
  s.authors = ["Mikael Lammentausta"]
  s.email = %q{mikael.lammentausta@gmail.com}
  s.homepage = %q{http://github.com/lamikae/caterpillar}
  s.version = Caterpillar::VERSION

	s.add_dependency("hpricot", ">= 0.6.164")
  s.add_dependency("rails", "~> 3.2.6")
	s.add_dependency("jrexml")
	s.add_dependency("rake")

  # For testing
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'

  s.description = %q{= Caterpillar}

  s.executables = ["caterpillar"]
  s.default_executable = %q{caterpillar}

  s.files = `git ls-files`.split("\n")

  s.extra_rdoc_files = ["README.rdoc","MIT-LICENSE","ChangeLog"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rdoc_options << '--line-numbers' << '--inline-source'
  s.rubyforge_project = %q{rails-portlet}
  s.summary = %q{Caterpillar helps building Rails applications for JSR286 portlets.}
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
end
