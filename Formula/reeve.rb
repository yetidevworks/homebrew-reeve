class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.5/reeve-darwin-aarch64.tar.gz"
      sha256 "67c5b7327520cfec5e425f86335ab24cf80748af6e98ef261e92e318d1d6897b"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.5/reeve-darwin-x86_64.tar.gz"
      sha256 "e8a8bd1a0db7a0f83062d45e1fa04abe0e46580ade32bec23f4ed06a35729f68"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.5/reeve-linux-aarch64.tar.gz"
      sha256 "d7c3ea2d041cbe49c5134bc3ab32cc2c339525b60334141b03fc28a45a537161"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.5/reeve-linux-x86_64.tar.gz"
      sha256 "8221228a111d57a5b268474990f1bc8449d1018a7339801cf06e605e55e77f9c"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
