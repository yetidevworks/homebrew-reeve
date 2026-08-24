class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.8/reeve-darwin-aarch64.tar.gz"
      sha256 "447287716fc2c6642ef4b06730a17d3f159988dc0326270dc35af08ad0c2f564"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.8/reeve-darwin-x86_64.tar.gz"
      sha256 "7aa822382d0e87ea3cbd8a40530f3f38f7f780fbff105d5db604a21af2b7a4fa"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.8/reeve-linux-aarch64.tar.gz"
      sha256 "a3233b5d2d18b849ce4b1c87a7433b6dc140d464c02d54b7871acb837d29e5d1"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.8/reeve-linux-x86_64.tar.gz"
      sha256 "e0517c00427637dd914781ed18537ea72381525652e6ca5cd5e9d2f14b1e43a8"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
