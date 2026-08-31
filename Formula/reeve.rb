class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.0.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.1/reeve-darwin-aarch64.tar.gz"
      sha256 "f3d5be8f38c74403ae9b9794a16cba6d590d298450cf547878d74adfd50b1a64"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.1/reeve-darwin-x86_64.tar.gz"
      sha256 "53dabea94bfabb72b97b1a30b3a08d5ead65d4e3b15f1f66b62c9c3a0a912d13"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.1/reeve-linux-aarch64.tar.gz"
      sha256 "eefab79af81cff0eca94109e4f61720cbf9d9822118bf691a2db549ed06224aa"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.1/reeve-linux-x86_64.tar.gz"
      sha256 "f6f967a401c8fdd4b3ffa73e7b94ef09056355cf66642897fa19cc9891ca0848"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
