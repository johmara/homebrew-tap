class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-arm64.tar.gz"
      sha256 "18846a4b51e169876190852fa0c830a3395e91ac9876763bc92600fef0650033"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-amd64.tar.gz"
      sha256 "268a09fc59135176263e6369a04dfdd8311d9dee9afe8e0fc9a681bde1dfc02c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-arm64.tar.gz"
      sha256 "4cb83e8ea4eed513a015f56ecbae953302fd7c65f4fac9e40d58e46b7bd458e4"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-amd64.tar.gz"
      sha256 "8586e43311a9fef56905d52c4e155b46ba4be3daf7d4366d34ae0580c6c46ed2"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
