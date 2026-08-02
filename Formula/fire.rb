class Fire < Formula
  desc "CLI with dynamic completion powered by external configuration"
  homepage "https://github.com/gbenm/fire"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "081a2e7d44fe04199617d367039a21db0e8f36dac6a809d184a578ecd9fb71d4"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "764eb2a68f0a06c2f48aa5e93a134b552cc495c55b76aa71129bdbd1b0a864b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "ea530e4d57b039c341ae4c32a474578f32b35fbcf9e6a5bc4b27d9010dacb379"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
