class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.5/reeve-darwin-aarch64.tar.gz"
      sha256 "a6b6079795f3b283856d61e8f9d12a68b95c7b2ea8993cb6887278b615cdd2c0"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.5/reeve-darwin-x86_64.tar.gz"
      sha256 "33d96ab757804600d404ff6604c6cb7ecd764a38c9fd8ee1bd7b68bfcd1fb959"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.5/reeve-linux-aarch64.tar.gz"
      sha256 "1b7e3d13bf61cb58ec5523e13bc7b2254878f1e310ee63a6e2fc7db0c186a1f9"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.5/reeve-linux-x86_64.tar.gz"
      sha256 "db1ff59d15a0a632350d0ca45c009c010a24ce4f9228bf5ce5c9bd8d7ee28e4b"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
