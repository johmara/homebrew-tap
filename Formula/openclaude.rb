class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-darwin-arm64.tar.gz"
      sha256 "d3c5c3a074ff0cd891feea092589839bff5014b776aa08b2c19f9a2ca125d6d3"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-darwin-amd64.tar.gz"
      sha256 "de708e936ccace3ede1cd8dca74b7a12efa032c2f204b0d7f60c33572b1c7680"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-linux-arm64.tar.gz"
      sha256 "21cf7a98fb337d260b42f96b26abc0985b48f3d573e34185145baf8a3da2f003"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-linux-amd64.tar.gz"
      sha256 "9a9b315e79aec72af9f13f677869ef08122e4595f098006f50e478a96e05ff9b"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
