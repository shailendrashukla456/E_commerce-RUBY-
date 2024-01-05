# -*- encoding: utf-8 -*-
# stub: wkhtmltopdf-binary 0.12.6.6 ruby .

Gem::Specification.new do |s|
  s.name = "wkhtmltopdf-binary".freeze
  s.version = "0.12.6.6".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = [".".freeze]
  s.authors = ["Zakir Durumeric".freeze]
  s.date = "2022-11-30"
  s.email = "zakird@gmail.com".freeze
  s.executables = ["wkhtmltopdf".freeze]
  s.files = ["bin/wkhtmltopdf".freeze]
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.4.22".freeze
  s.summary = "Provides binaries for WKHTMLTOPDF project in an easily accessible package.".freeze

  s.installed_by_version = "3.4.22".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
end
