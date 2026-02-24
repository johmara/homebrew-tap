class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.3/openclaude-darwin-arm64.tar.gz"
      sha256 "4debdb399dac5bea9828bbbf7d377ba69df1560a70af436b24b7db75ee676526"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.3/openclaude-darwin-amd64.tar.gz"
      sha256 "777477151d8da07fd903809dcee6dd1b8690c426a1689ae334f685768ddc9f40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.3/openclaude-linux-arm64.tar.gz"
      sha256 "1474fd5129b65e411d8cf9acaeba28c75a644e86669f6538a85f084d2e01bcb6"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.3/openclaude-linux-amd64.tar.gz"
      sha256 "a1ded22fae116f1aaa8ce351a6fb037d6b9ceeb2dafb40b5eb9ebe8062008b6f"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
