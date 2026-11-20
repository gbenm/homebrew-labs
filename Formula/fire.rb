class Fire < Formula
  desc "CLI with dynamic completion powered by external configuration"
  homepage "https://github.com/gbenm/fire"
  version "2.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-arm64.tar.gz"
      sha256 "0ed2f68df880db3c62a1b305e04883fc35533b5aadd6c6e92972420ea18eae70"
    end

    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-macos-intel.tar.gz"
      sha256 "34a90a70bc6eae1ff08983448dd428ee6dadce957a459008121738c9061b3c2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gbenm/fire/releases/download/v#{version}/fire-v#{version}-linux-x86_64.tar.gz"
      sha256 "2994154a0464a988b282033cbd28bcc8bd0fe442ac13ddecccc957c504eb9737"
    end
  end

  def install
    bin.install "fire"
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
