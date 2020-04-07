
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yosis/video_grinder/version"

Gem::Specification.new do |spec|
  spec.name          = "yosis-video_grinder"
  spec.version       = Yosis::VideoGrinder::VERSION
  spec.authors       = ["Felix Wolfsteller"]
  spec.email         = ["felix.wolfsteller@gmail.com"]

  spec.summary       = %q{doc and tools to work with video production (mainly streamio-ffmpeg wrappers)}
  spec.description   = %q{Make multiple, differently encoded and stored videos and screenshots from a single video}
  spec.homepage      = "https://github.com/econya/yosis-video_grinder"
  spec.license       = "AGPLv3+"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "streamio-ffmpeg"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
