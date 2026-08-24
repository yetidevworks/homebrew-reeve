class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.9/reeve-darwin-aarch64.tar.gz"
      sha256 "df8b084867ad8b95bf8d998c019b678cbeb165bd92de8c8ab69627670b553866"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.9/reeve-darwin-x86_64.tar.gz"
      sha256 "3da75e3c2228ee47c6d60f698a4a7c335eed285af884c8b429eb9b2221403791"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.9/reeve-linux-aarch64.tar.gz"
      sha256 "ee7bc77aef788ea4b4e021a80745a860ce52e47f02791ab69555e64db7fb0ad6"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.9/reeve-linux-x86_64.tar.gz"
      sha256 "822db816f4c407c972b4d8d7a50260d0428d5e0671100dd83bc84145578770f9"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
