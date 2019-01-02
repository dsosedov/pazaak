# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require_relative 'lib/pazaak'

Gem::Specification.new do |s|
  s.name          = 'pazaak'
  s.version       = Pazaak::VERSION
  s.platform      = Gem::Platform::RUBY
  s.date          = '2019-01-01'
  s.summary       = 'A popular ancient Galactic card game from the times of the Old Republic'
  s.description   = 'A pazaak game engine'
  s.authors       = ['Dmitrii Sosedov']
  s.email         = 'd.sosedov@gmail.com'
  s.homepage      = 'http://rubygems.org/gems/pazaak'
  s.license       = 'MIT'

  s.files         = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  #s.test_files    = ['test/test_pazaak.rb']
  s.require_paths = ['lib']

  s.metadata['yard.run'] = 'yri'
end
