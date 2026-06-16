class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.0/reeve-darwin-aarch64.tar.gz"
      sha256 "0cfe99ba80feb7a2fb1fa5d937952b2a538d8150df29dc279ae7856b1c332de2"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.0/reeve-darwin-x86_64.tar.gz"
      sha256 "3c47e14efc89a5a3784f1e20d4e31686215bc6010ed5590303f45f54c376a3a0"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.0/reeve-linux-aarch64.tar.gz"
      sha256 "c70b34dd66d03c52e954f6704ca65efc66d89cbbbd6b27a0ddf2b8c83aea6db1"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.0/reeve-linux-x86_64.tar.gz"
      sha256 "7407f0fb15da3999cef6559b741a5ea37ee3c4ce56cb8a7ca819b3c775ea4dea"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
