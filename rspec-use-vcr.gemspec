
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec/use/vcr/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-use-vcr"
  spec.version       = Rspec::Use::Vcr::VERSION
  spec.authors       = ["yalab"]
  spec.email         = ["rudeboyjet@gmail.com"]

  spec.summary       = %q{This gem provides `use_vcr` method on your rspec.}
  spec.description   = %q{aswesome}
  spec.homepage      = "https://github.com/yalab/rspec-use-vcr"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "vcr"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
