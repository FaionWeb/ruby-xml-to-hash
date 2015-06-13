# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xml/to/hash/version'

Gem::Specification.new do |spec|
  spec.name = 'xml-to-hash'
  spec.version = Xml::To::Hash::VERSION
  spec.authors = ['Maarten Trompper']
  spec.email = ['m.f.a.trompper@uva.nl']

  spec.summary = %q{Transparently convert XML documents to Ruby hashes (...and JSON, and beyond)}
  spec.description = %q{This gem add a to_hash method to Nokogiri XML nodes into a Ruby hash. We generate a hash, 
in which all keys are constants. 
NOTE: This gem ignores fancy stuff like doctypes and entity declarations.}
  spec.homepage = 'https://github.com/digitalheir/ruby-xml-to-hash'
  spec.license = 'MIT'

  # # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  # end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 2.4'

  spec.add_runtime_dependency 'nokogiri', '~> 1.6.6.2', '>= 1.6.6.2'
end