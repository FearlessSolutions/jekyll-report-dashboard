# frozen_string_literal: true

require_relative "theme_version"

Gem::Specification.new do |spec|
  spec.name          = "project-dashboard"
  spec.version       = ProjectDashboard::VERSION
  spec.authors       = ["Tiffany Forkner"]
  spec.email         = ["tforkner@fearless.com"]
  
  spec.summary       = "Jekyll theme for displaying software project reports (e.g. Playwright reports, code coverage reports, GitHub release notes)"
  spec.homepage      = "https://github.com/FearlessSolutions/project-dashboard-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|LICENSE|README|_config\.yml|404\.html)!i) }

  spec.required_ruby_version = "~> 3.4.2"

  spec.add_development_dependency "bundler"
end
