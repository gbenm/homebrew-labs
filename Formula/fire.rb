class Fire < Formula
  desc "CLI with dynamic completion powered by external configuration"
  homepage "https://github.com/gbenm/fire"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "dca6258cfb95ede6dc3a1b4d32c20a9c2c1447fdb12dd1ce0d98607a918212ba"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "fe6627cc159831492cecf45cf7dfb9c2bdddbca04270314917b9615c4ce876bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "b26e97ebcdecbb326c734668cd728cd9ba288727efc62fa645feb7587d4cead2"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
