class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.1.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.4/reeve-darwin-aarch64.tar.gz"
      sha256 "35dc0edb0c7a401cecd7d72002f06aab166ec3cefe613eca6b211ec91a4aa076"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.4/reeve-darwin-x86_64.tar.gz"
      sha256 "2ad01929b85040a78b63a0ef592adacd92a75c18da083881eaf27714247286b7"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.4/reeve-linux-aarch64.tar.gz"
      sha256 "11e04b3062bee5ac2e3b99a5d5d680034bc5859aebe49d980380a4529b549213"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.4/reeve-linux-x86_64.tar.gz"
      sha256 "7677b8a50f2879185b57f44259901046ab058958dca4f8dcf8ea277eb0806d40"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
