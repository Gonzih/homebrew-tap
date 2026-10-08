class Kittens < Formula
  desc "AI coding agent harness"
  homepage "https://kittens.maksim.sh/"
  url "https://static.crates.io/crates/kittens/kittens-0.2.1.crate"
  sha256 "00ce3a18c3883b46e6b10eaf95563fe5eee164a1814f271f1ac5090efc4908b3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kittens --version")
  end
end
