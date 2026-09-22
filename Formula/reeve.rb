class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.1.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.1/reeve-darwin-aarch64.tar.gz"
      sha256 "185035982242b9b66668b6b6ac67a76173da35e929f908746cb1c7657e2e3808"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.1/reeve-darwin-x86_64.tar.gz"
      sha256 "1279dccefd4d3aa5a7f75b4b18a45ee4bf6db5bf3101e717c83b2d5db530773b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.1/reeve-linux-aarch64.tar.gz"
      sha256 "5b8931acc3cd519ccb80c07ec48fc954532b9caff9842b69a48f3c24db10b445"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.1/reeve-linux-x86_64.tar.gz"
      sha256 "3f2a27e2e704743f617d72d42147e7ed696a28dcbb450deffe0e7b1176669d92"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
