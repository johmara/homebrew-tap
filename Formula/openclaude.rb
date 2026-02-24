class Openclaude < Formula
  desc "A full-featured TUI for Claude Code"
  homepage "https://github.com/johmara/openclaude"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-arm64.tar.gz"
      sha256 "110432f087f0e2b244337ca5860242f15adb20871b28241db1c1009aa29a743f"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-darwin-amd64.tar.gz"
      sha256 "001325cc661eee6e23f0b5b13fb4a65948316c5130c5261ed57251add64eea30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-arm64.tar.gz"
      sha256 "8150667a040e13facfa4e2de250a4108f5c761c401c4eb20799914ba55f5548a"
    end
    on_intel do
      url "https://github.com/johmara/openclaude/releases/download/v0.1.0/openclaude-linux-amd64.tar.gz"
      sha256 "70d94cdab7dfaf90b11d268db38c191f9d451fde63722674db304cfe3163f940"
    end
  end

  def install
    bin.install "openclaude"
  end

  test do
    assert_match "openclaude", shell_output("#{bin}/openclaude version")
  end
end
