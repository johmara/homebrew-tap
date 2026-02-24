class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-arm64.tar.gz"
      sha256 "418d57c6c1134b7e06822dacf42acbacd06ea3f33a24a4b5486d8fc79ceb4876"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-amd64.tar.gz"
      sha256 "6238a52a859d7d2342a35485d982f561a221aa07236fab90807d75e07382bc31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-arm64.tar.gz"
      sha256 "a48889fc17d4669b008a573cf49f857ac1402e6accea0b4d143fffb2ef988b51"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-amd64.tar.gz"
      sha256 "d42ad2f10b43e9c633f013b589a7e838b8cbcd48b5f4dca57660ecc7e0fc5967"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
