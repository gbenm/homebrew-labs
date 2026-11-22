class Fire < Formula
  desc "CLI with dynamic completion powered by external configuration"
  homepage "https://github.com/gbenm/fire"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "056b3c85e920de3ce3c66d4daf636f0c4853d112779988425801a472d2651cc0"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "7302bfd1831b34ea8b0b1afc3220356015997e47eb0c5661a074c739f6c8731f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "189623563aaae73f7a8e9863ebfeeb417a2ff4c000d39cb200886d00f2bb4ea8"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
