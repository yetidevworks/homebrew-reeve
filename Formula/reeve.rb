class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.7/reeve-darwin-aarch64.tar.gz"
      sha256 "454ce9ef7a9e31c775b0eb4249727fd49a5ba253ad88ce2164aebc7799fb4de1"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.7/reeve-darwin-x86_64.tar.gz"
      sha256 "cbde0a6bb36fa65a6e943fe449b95ac775f87f789f58531496a679b1c1797dbc"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.7/reeve-linux-aarch64.tar.gz"
      sha256 "c0be0b3b7713f490560fd429a1e2f89ac0420d7298d08b5c452b24f3b6bd04de"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.7/reeve-linux-x86_64.tar.gz"
      sha256 "82e3f64b3c931c141a32ef6c550a2d126c8a32a633a466defa7d055af9575d25"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
