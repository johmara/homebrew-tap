class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.2/openclaude-darwin-arm64.tar.gz"
      sha256 "14872e5407cb1e38d8b3313febe9f19ef992550b9f2927c0979dcc202f332d7b"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.2/openclaude-darwin-amd64.tar.gz"
      sha256 "962dce9e811f2e36b50786c3291561304fe5044522b72fd55a53f45252f62cc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.2/openclaude-linux-arm64.tar.gz"
      sha256 "e7bceba4f2f8c1c16958df1921baa5cb87da7dda77278c51259f377502ead034"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.2/openclaude-linux-amd64.tar.gz"
      sha256 "d2351cafa6926fb250ced10687fa98971668b3ff7921637c04c8d371a647cf6f"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
