class Fire < Formula
  desc "CLI with dynamic completion powered by external configuration"
  homepage "https://github.com/gbenm/fire"
  license "MIT"
  head "https://github.com/gbenm/fire.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Fire CLI", shell_output("#{bin}/fire")
  end
end
