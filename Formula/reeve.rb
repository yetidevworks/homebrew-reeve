class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.4/reeve-darwin-aarch64.tar.gz"
      sha256 "d861d53a50cd6a09b935b9df3b858c055f8d58dd3fe31b7de535df5f1b334e28"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.4/reeve-darwin-x86_64.tar.gz"
      sha256 "22303159ddd379bd0571c5c22bd6b686cc99de575a2e3237e2cdfdc3ad5b9151"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.4/reeve-linux-aarch64.tar.gz"
      sha256 "953d226d6782f544803ecd6cca59c5a3a4e9fe71d84deac13931dddc23a56bf3"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.4/reeve-linux-x86_64.tar.gz"
      sha256 "0a2e5e35dbaded37931d12f49219dae0e35f248e1720ec007cb417a564958eac"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
