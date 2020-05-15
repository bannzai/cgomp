require_relative 'lib/cgomp/version'

Gem::Specification.new do |spec|
  spec.name          = "cgomp"
  spec.version       = Cgomp::VERSION
  spec.authors       = ["bannzai"]
  spec.email         = ["yudai-hirose@cookpad.com"]

  spec.summary       = %q{Generating mobile app entity code from autodoc.}
  spec.description   = %q{Generating mobile app entity code from autodoc.}
  spec.homepage      = "https://github.com/bannzai/cgomp"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
