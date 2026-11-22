class Fire < Formula
  desc "Config-first task runner with completion, detachable sessions, and an MCP server"
  homepage "https://github.com/gbenm/fire"
  version "2.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "4212f802d09beef30671c35dd0221858bc99890f5f7e1e1702c78582c1748e9a"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "3c14998a81db14750009764dccc35bcf29d4e4d61f31dd32712609407e524fa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-arm64.tar.gz"
      sha256 "dd67beaf0d1dd2eea74563185322d69466bb38b008ec40f45ccb3a49c84685b6"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "9b7aa4e8c6fb78f1bcf567458ffa00daa6a370f7dfb2c07461554f8d07c8a610"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
