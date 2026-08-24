class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.6/reeve-darwin-aarch64.tar.gz"
      sha256 "112f846a1d7da15574cdf808dd0e0ab365bdc878fe225e2e3381f54c190837de"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.6/reeve-darwin-x86_64.tar.gz"
      sha256 "8edfc0212b248327e820f0f5b7430aca4631835186a5bccc18ca25f0cbe7c235"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.6/reeve-linux-aarch64.tar.gz"
      sha256 "8832a50ce4002b4eac7bfe517196349aeadf918a3590386326c9b1868adac2a8"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.6/reeve-linux-x86_64.tar.gz"
      sha256 "07875cdbb7131e0a9d4641e207296b2b7a03b062204a0cadf8532eeeef9854a2"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
