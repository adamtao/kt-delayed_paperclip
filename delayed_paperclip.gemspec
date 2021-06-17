$:.push File.expand_path("../lib", __FILE__)
require "delayed_paperclip/version"

Gem::Specification.new do |s|
  s.name        = %q{kt-delayed_paperclip}
  s.version     = DelayedPaperclip::VERSION

  s.authors     = ["Adam Anderson", "Jesse Storimer", "Bert Goethals", "James Gifford", "Scott Carleton"]
  s.summary     = %q{Process your Paperclip attachments in the background}
  s.description = %q{Process your Paperclip attachments in the background with ActiveJob}
  s.email       = %w{james@jamesrgifford.com scott@artsicle.com}
  s.homepage    = %q{https://github.com/adamtao/kt-delayed_paperclip}

  s.required_ruby_version = ">= 2.0.0"

  s.add_dependency 'kt-paperclip', ">= 6.4.1"
  s.add_dependency 'activejob', ">= 4.2"

  s.add_development_dependency 'mocha'
  s.add_development_dependency "rspec", '< 3.0'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'rake', '~> 10.5.0'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'activerecord'
  s.add_development_dependency 'railties'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
end
