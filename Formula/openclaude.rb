class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-darwin-arm64.tar.gz"
      sha256 "019b2bbf46c911383930a665c5a8c1785748657f89c6f8e0259a7d3472d13064"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-darwin-amd64.tar.gz"
      sha256 "b37617cae172e1087f2615b808ab6d188ea87e323ab0f9eb4c067189f5e010f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-linux-arm64.tar.gz"
      sha256 "e2846a9ca853384be9c838206595fb0a0ce46ac60edc1d178d0227317174991f"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.1/openclaude-linux-amd64.tar.gz"
      sha256 "d39cc31f22c19786da50c51305196baa1b0876c9492627dddcf39c876445c9a6"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
