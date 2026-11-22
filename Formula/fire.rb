class Fire < Formula
  desc "Config-first task runner with completion, detachable sessions, and an MCP server"
  homepage "https://github.com/gbenm/fire"
  version "2.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "a848edcf24fcaf2ff103268fc58ad7a0dd3e2ee8c48d957147ca707fde80e49b"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "5dd58cf68a888833f9bd6cdf7eec09e848ace956cc67402aa4b98842489f0f19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-arm64.tar.gz"
      sha256 "75f9b60c703f4a358e4512e2fad26ab09c61082c52feb6605064031444753449"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "94781516f8f4d08bc2e24d864130c91664190b9f2826ed762ba19609da6b083a"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
