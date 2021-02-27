# frozen_string_literal: true

require_relative "lib/cvx_test_push/version"

Gem::Specification.new do |spec|
  spec.name          = "cvx_test_push"
  spec.version       = CvxTestPush::VERSION
  spec.authors       = ["Jarek Radosz"]
  spec.email         = ["jradosz@gmail.com"]
  spec.summary       = "A test of automatic gem publishing and version tagging"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "rubocop-discourse", "~> 2.4.1"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
