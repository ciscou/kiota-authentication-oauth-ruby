# frozen_string_literal: true

require_relative "lib/microsoft_kiota_authentication_oauth/version"

Gem::Specification.new do |spec|
  spec.name = "microsoft_kiota_authentication_oauth"
  spec.version = MicrosoftKiotaAuthenticationOAuth::VERSION
  spec.authors = 'Microsoft Corporation'
  spec.email = 'graphsdkpub@microsoft.com'
  spec.description   = 'Kiota Authentication implementation with oauth2'
  spec.summary       = 'Microsoft Kiota Authentication OAuth - Kiota Ruby Authentication OAuth library'
  spec.homepage      = 'https://microsoft.github.io/kiota/'
  spec.license       = 'MIT'
  spec.metadata      = {
    'bug_tracker_uri' => 'https://github.com/microsoft/kiota-authentication-oauth-ruby/issues',
    'changelog_uri'   => 'https://github.com/microsoft/kiota-authentication-oauth-ruby/blob/main/CHANGELOG.md',
    'homepage_uri'    => spec.homepage,
    'source_code_uri' => 'https://github.com/microsoft/kiota-authentication-oauth-ruby',
    'github_repo'     => 'ssh://github.com/microsoft/kiota-authentication-oauth-ruby'
  }
  spec.required_ruby_version = ">= 2.7.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir = 'bin'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  
  spec.add_runtime_dependency 'microsoft_kiota_abstractions', '>= 0.12', '< 0.14'
  spec.add_runtime_dependency 'oauth2', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
