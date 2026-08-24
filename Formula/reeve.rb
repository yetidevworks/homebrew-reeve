class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.10"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.10/reeve-darwin-aarch64.tar.gz"
      sha256 "10fb4bbd0a09e5de152904fb25cc203f2d6a4e06d8c2aa06788a64fb48c85982"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.10/reeve-darwin-x86_64.tar.gz"
      sha256 "43ad027e78007030d918aa8323349bc89af17e96bab8a450fc91e6bc6457fc56"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.10/reeve-linux-aarch64.tar.gz"
      sha256 "f92ad19e2c063f2a9470ff89a0855ad7986ddf56512dd719e7883343a8e766bd"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.10/reeve-linux-x86_64.tar.gz"
      sha256 "8f92c34603fae330ecb7273d5bbeb8c2f884411b65293ab50ca3d8e27d967e9d"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
