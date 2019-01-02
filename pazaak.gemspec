require './lib/pazaak'

Gem::Specification.new do |s|
  s.name          = 'pazaak'
  s.version       = Pazaak::VERSION
  s.date          = '2019-01-01'
  s.summary       = 'A popular ancient Galactic card game from the times of the Old Republic'
  s.description   = 'A pazaak game engine'
  s.authors       = ['Dmitrii Sosedov']
  s.email         = 'd.sosedov@gmail.com'
  s.homepage      = 'http://rubygems.org/gems/pazaak'
  s.license       = 'MIT'

  s.files         = ['lib/pazaak.rb']
  s.test_files    = ['test/test_pazaak.rb']
  s.require_paths = ['lib']

  s.metadata['yard.run'] = 'yri'
end
