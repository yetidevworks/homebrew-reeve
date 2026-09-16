class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.0/reeve-darwin-aarch64.tar.gz"
      sha256 "44721dc8e60f5198f558cc320f7803710ea0f22e574e512eb0501d148305f77b"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.0/reeve-darwin-x86_64.tar.gz"
      sha256 "b97feb806804140664425643283c48f7298af58eb10a66c55025e21f0a4148be"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.0/reeve-linux-aarch64.tar.gz"
      sha256 "26ece8603e279bd92ac4e93388b6076a5345305ef460e1d3556230caff3a3867"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.0/reeve-linux-x86_64.tar.gz"
      sha256 "46af0ac5a2c3beee68a14608297fdc75f1fcf3498e655d2827e2369a5e044b83"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
