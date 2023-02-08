class Tcli < Formula
  desc "Utility app to help creating cogs for TCore"
  homepage "https://github.com/Tectone23/tcli"
  url "https://github.com/Tectone23/tcli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a655ceabb4f5caf7f1f47818b1a9ed3985074713c04e25b916490926eb6aafe5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/tcli"
  end

  test do
    system "#{bin}/tcli", "--version"
  end
end
