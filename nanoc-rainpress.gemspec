# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'nanoc/rainpress/version'

Gem::Specification.new do |s|
  s.name        = 'nanoc-rainpress'
  s.version     = Nanoc::Rainpress::VERSION
  s.homepage    = 'http://nanoc.ws/'
  s.summary     = 'Rainpress support for nanoc'
  s.description = 'Provides a :rainpress filter for nanoc'

  s.author  = 'Denis Defreyne'
  s.email   = 'denis.defreyne@stoneship.org'
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         [ 'nanoc-rainpress.gemspec' ]
  s.require_paths      = [ 'lib' ]

  s.rdoc_options     = [ '--main', 'README.md' ]
  s.extra_rdoc_files = [ 'LICENSE', 'README.md', 'NEWS.md' ]

  s.add_runtime_dependency('nanoc-core')
  s.add_runtime_dependency('rainpress')
  s.add_development_dependency('bundler')
end
