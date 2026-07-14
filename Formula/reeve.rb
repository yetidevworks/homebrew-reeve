class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.2/reeve-darwin-aarch64.tar.gz"
      sha256 "6a27fa8fbc71596ebb508793246604f6736b3ddb6581358ee543c8b81c46045e"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.2/reeve-darwin-x86_64.tar.gz"
      sha256 "9512b1b8457126b6212308b09aa94ddc3581d3bdf8f5014400841fbb61ec7464"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.2/reeve-linux-aarch64.tar.gz"
      sha256 "9e46b12784819de4f2d97673d9ed363de78d6828eb481b286bf55f035756e63a"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.2/reeve-linux-x86_64.tar.gz"
      sha256 "aba743e97712c920a3ab787cf5cb3e46f50acb64cf6dbc526765e78de2df03c4"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
