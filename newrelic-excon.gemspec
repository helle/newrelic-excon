# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = 'newrelic-excon'
  s.version     = '0.3'
  s.license     = "MIT"
  s.summary     = "Excon instrumentation for Newrelic."
  s.authors     = ["Andreas Gerauer"]
  s.email       = %q{andi@tickaroo.com}
  s.homepage    = "https://github.com/helle/newrelic-excon"

  s.require_paths = ["lib"]
  s.files = [ "Rakefile", "README", "LICENSE"]
  %w(lib).each do |dir|
    s.files = s.files + Dir.glob( "#{dir}/**/*" ).delete_if { |item| item.include?( "\.svn" ) }
  end
  
  s.add_dependency('excon')
  s.add_dependency('newrelic_rpm', '>=3.6.1.87')
  
  s.platform = Gem::Platform::RUBY
end
