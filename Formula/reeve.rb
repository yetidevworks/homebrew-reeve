class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.3/reeve-darwin-aarch64.tar.gz"
      sha256 "b9a5addcd2db5ffb5cace52e8382c11e18da4a10f63719bcc38541afb3d4bf2d"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.3/reeve-darwin-x86_64.tar.gz"
      sha256 "5614d43892b71382eb10137476d598248e57df4eff16b32cda71fca70156623c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.3/reeve-linux-aarch64.tar.gz"
      sha256 "8c28663a58ee87b008f313c1b2178b31f84df473789dc1ae69fd518164bfdb4d"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.3/reeve-linux-x86_64.tar.gz"
      sha256 "6e341a703f5291e9fc05234e4d8013883149832bff493fa3dcb994a693385c16"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
