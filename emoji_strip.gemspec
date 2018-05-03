# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'emoji_strip/version'

Gem::Specification.new do |spec|
  spec.name          = 'emoji_strip'
  spec.version       = EmojiStrip::VERSION
  spec.authors       = ['Nikita Batrak']
  spec.email         = ['niks.dn.ua@gmail.com']

  spec.summary       = 'Emoji stripper'
  spec.homepage      = 'https://github.com/n-n1ks/emoji_strip'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
