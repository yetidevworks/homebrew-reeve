class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.1/reeve-darwin-aarch64.tar.gz"
      sha256 "6a57a59a54d8c23b5b59b554404d130b8842cea72ea2b5879bc43bd85e63a994"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.1/reeve-darwin-x86_64.tar.gz"
      sha256 "003fb55b9a916a2c8cb4d8e1f66c5853947c39d4ae6678376aae036a14c0f358"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.1/reeve-linux-aarch64.tar.gz"
      sha256 "3df67e4dacc73cc7dc05b8324a7b6dd204802da76d130637eac793b4ffc1590d"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.1/reeve-linux-x86_64.tar.gz"
      sha256 "c3a9a094fc988250922f93e0f6088465e4be9f9bb3bf27b4fb3d695f026791b0"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
