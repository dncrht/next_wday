lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'next_wday/version'

Gem::Specification.new do |gem|
  gem.name          = 'next_wday'
  gem.version       = NextWday::VERSION
  gem.authors       = ['Daniel Cruz Horts']
  gem.summary       = %q{Given a date, it returns the date of the next/previous specified day of week. I.e.: What'ss the previous Sunday of July 9th? July 7th}
  gem.homepage      = 'https://github.com/dncrht/next_wday'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'pry-debugger'
end