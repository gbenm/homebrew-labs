class Fire < Formula
  desc "CLI with dynamic completion powered by external configuration"
  homepage "https://github.com/gbenm/fire"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "202f34aaf51e34bbd427f3f44a16b30a9f12aa7b2a440051d1bd8bec421a4194"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "4b8ceaa0483551a2507ccb9926c8a936a2f7787fea39def3e97fdae79c4ef277"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "4e9ecae7619f61a54d79fbfe7988d6896449f8c85b7bbef55aceafc2e5c40553"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
