class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.0/reeve-darwin-aarch64.tar.gz"
      sha256 "2b880a00c25a6e85c7338ece43747002ffa8276c4a7731f6a595e2687f20b45b"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.0/reeve-darwin-x86_64.tar.gz"
      sha256 "1ee70f4385700745b51c4a13894237e8d9e3165e08aa9aa0e8e21592a729b425"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.0/reeve-linux-aarch64.tar.gz"
      sha256 "69dd97bfc80e3f68970d4d334dc51458b9d85adac26fc7046bed4a5c4eb892b8"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.0/reeve-linux-x86_64.tar.gz"
      sha256 "e04ae49a34d4d32ddd13e0a235082104ed1b07df30c14c8099d20b215eb30675"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
