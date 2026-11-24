class Fire < Formula
  desc "Config-first task runner with completion, detachable sessions, and an MCP server"
  homepage "https://github.com/gbenm/fire"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "345d76fa422d7c3ff94f481a01594314543752123cb9db6f79dc952008fffb51"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "46a88a836b1581e99fde856736567f4f0addd2bc980d601669285d9dd84d2e85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-arm64.tar.gz"
      sha256 "0052dbb68e5fcb253efa605f5d63440af0e5d3a2a9e06524af797c8330f25e41"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "c3500036a7df30acc03cef3b99389ba69ffaf8a89236faa088e85f18dbaf9f99"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
