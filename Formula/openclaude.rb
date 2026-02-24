class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-arm64.tar.gz"
      sha256 "b60a28f10ad36e84441fd6cb990a1a3ccb07ad0fad9586700b063079035af835"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-amd64.tar.gz"
      sha256 "1a5bbe9b90fb643e8b2ef37b388cd594d9c4bf6a9790986f8a2c634ae920e907"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-arm64.tar.gz"
      sha256 "66944bb9052c1d840c28f6ec53689ed29042be47ffdfa0de46016b5720a4ff8c"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-amd64.tar.gz"
      sha256 "9a63f310fcb6f0b01e9d0a86ab030571287e29c4e7bb91ab034ffad49000ee88"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
