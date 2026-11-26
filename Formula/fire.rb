class Fire < Formula
  desc "Config-first task runner with completion, detachable sessions, and an MCP server"
  homepage "https://github.com/gbenm/fire"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "df2705262daa8ec5a312e606ff596722d2a07a154edc793a74305c33e3a36de8"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "4e87236b453b36e287e1583e194301aaaabeee4baa95f1833827d7857bfc03db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-arm64.tar.gz"
      sha256 "0dd9cddc19fe00a1462503dd888f0268b3024420c67409a8f32651811e5ab1b2"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "c2aa939e25c5c4a8d1d561af7af82344631b3e28acef111e7692ed7d2b5dfe1b"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
