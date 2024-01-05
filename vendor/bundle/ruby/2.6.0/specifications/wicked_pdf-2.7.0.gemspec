# -*- encoding: utf-8 -*-
# stub: wicked_pdf 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "wicked_pdf".freeze
  s.version = "2.7.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/mileszs/wicked_pdf/blob/master/CHANGELOG.md" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Miles Z. Sterrett".freeze, "David Jones".freeze]
  s.date = "2023-08-24"
  s.description = "Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML.\nIn other words, rather than dealing with a PDF generation DSL of some sort,\nyou simply write an HTML view as you would normally, and let Wicked take care of the hard stuff.\n".freeze
  s.email = ["miles.sterrett@gmail.com".freeze, "unixmonkey1@gmail.com".freeze]
  s.homepage = "https://github.com/mileszs/wicked_pdf".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.requirements = ["wkhtmltopdf".freeze]
  s.rubygems_version = "3.4.22".freeze
  s.summary = "PDF generator (from HTML) gem for Ruby on Rails".freeze

  s.installed_by_version = "3.4.22".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<mocha>.freeze, ["= 1.3".freeze])
  s.add_development_dependency(%q<rails>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.46".freeze])
  s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, [">= 0".freeze])
end
