class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.1.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.2/reeve-darwin-aarch64.tar.gz"
      sha256 "e24707e5cefc746171c4d873ec9a6deeca8c64b298cc1fce86e2868114d11946"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.2/reeve-darwin-x86_64.tar.gz"
      sha256 "64675e97a6af74f8de8a85921032d6fbc4290e36f33a1b0a01722724da1e919a"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.2/reeve-linux-aarch64.tar.gz"
      sha256 "7b1473231f08aa7065d62efb2f2c7afaea77a53eb22ce025223c90fa530ffff4"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.2/reeve-linux-x86_64.tar.gz"
      sha256 "3767595917a53b871969d572f3d020a3fd3d1130bc264376bd53cfef6d3c3df3"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
