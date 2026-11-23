class Fire < Formula
  desc "Config-first task runner with completion, detachable sessions, and an MCP server"
  homepage "https://github.com/gbenm/fire"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "7bb6953bf45f2f6a76ee00422e3a2d82d7b6f55d2448962de883ed0a0e48015c"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "8b88a558eecf77e66c2c2fdba16484d3013c22ee1f38bfe1aab30b5d290f320d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-arm64.tar.gz"
      sha256 "ac79c4b6d7f99ec0626ae0c8d99f61f8bfe8b0dd9cd3e819c76198be3e7bd695"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "3b137ed5561850f40a0603c980533ae6e3e9976060e358ee526becfb673493b7"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
