class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-arm64.tar.gz"
      sha256 "29a98e0d7a0d4fa7c4e1fe519c69d23d73f0a9786f90d989f58eb5e3d84ec76a"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-amd64.tar.gz"
      sha256 "0efb25d11e979c5407585d6f9aa3f43c9ff65f943a00ac2d7a6e3da8a8433b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-arm64.tar.gz"
      sha256 "fb46160901eb63e55ca369394e05d6b51265555507231b7da4711ba165586180"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-amd64.tar.gz"
      sha256 "d3aaf7dc616a941c57ec9c05f1fd82a13bacebb5d902d48d029926f553ed5e3f"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
