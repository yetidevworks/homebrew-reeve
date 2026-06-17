class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.2/reeve-darwin-aarch64.tar.gz"
      sha256 "0b1a6601f3e9abb2d9f1268366a2e97790a6783fb3a69b00020ea44bfc36c226"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.2/reeve-darwin-x86_64.tar.gz"
      sha256 "cb192435abfb654a97fff6719576771fcde6567781daa884b3a7b8c7301fe451"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.2/reeve-linux-aarch64.tar.gz"
      sha256 "08a98f4867faf25bb7e680bd2e1d1455f21e80542c34538a1ffe8f7783ca0891"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.2/reeve-linux-x86_64.tar.gz"
      sha256 "bede99045f74e3d50e3f22eb969821a1f47353b9f02b89a06d7be7dac6ec8473"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
