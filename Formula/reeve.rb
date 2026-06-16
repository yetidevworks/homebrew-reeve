class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.1.0/reeve-darwin-aarch64.tar.gz"
      sha256 "c492c8c46be5f4d6b44a1616128c38792d0b25cfcac4afa20e5858cc75917863"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.1.0/reeve-darwin-x86_64.tar.gz"
      sha256 "02533fcde04089ea501c3687467f52733d1cdf313324b68bc42ef91155512c27"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.1.0/reeve-linux-aarch64.tar.gz"
      sha256 "98950e17f94476f118c22428e15aeb180e8ec945e3ac064f0e7c54ab1ea9767c"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.1.0/reeve-linux-x86_64.tar.gz"
      sha256 "afb6945db73dc006a0e1fc69d17d3e5e93831d67cc7ee6aeb1cdc3c282024b5a"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
