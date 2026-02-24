class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.4/openclaude-darwin-arm64.tar.gz"
      sha256 "5b60c217959b71b2d9b4c01e293d3b19ac0239dbbfafe84a47f3144bcda4e16f"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.4/openclaude-darwin-amd64.tar.gz"
      sha256 "59f656c211d27859b4ecd87d8f863e19d812d4be3bb78763d885c47e42b91cca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.4/openclaude-linux-arm64.tar.gz"
      sha256 "7fb242162a8976e02f4c4b3d3138187580baf386cff93569a2044ddf7f7335d4"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.4/openclaude-linux-amd64.tar.gz"
      sha256 "7b19ee9ea29c9cd4ed045db0a8d55d3e2b48c4be36c27663e421cc5947b26a41"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
