class Kittens < Formula
  desc "AI coding agent harness"
  homepage "https://kittens.maksim.sh/"
  url "https://static.crates.io/crates/kittens/kittens-0.3.0.crate"
  sha256 "d67f0e7c5c79064685dfc7de32943998141b7afb245ffcef419dbd66c0fc27cd"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kittens --version")
  end
end
