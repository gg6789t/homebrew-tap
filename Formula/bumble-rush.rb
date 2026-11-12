class BumbleRush < Formula
  desc "Simple game to kill time"
  homepage "https://github.com/gg6789t/bumble-rush"
  url "https://github.com/gg6789t/bumble-rush/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "125256390ff69b64b47d47e0d83d4873b78792c730df17dd2f1a012ce0db9487"
  license "MIT"
  head "https://github.com/gg6789t/bumble-rush.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "BUMBLE RUSH", shell_output("#{bin}/bumble-rush --help")
  end
end
