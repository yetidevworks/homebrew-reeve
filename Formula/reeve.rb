class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.4/reeve-darwin-aarch64.tar.gz"
      sha256 "28f21faa0cc3431eee0a6bfbc9d5f91ec95c03b619cbdfd774a1927c06706f2d"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.4/reeve-darwin-x86_64.tar.gz"
      sha256 "2ce91c2490d70e0856f70410dc90f9769a8394101fa34aaf6d587827d53cc6ce"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.4/reeve-linux-aarch64.tar.gz"
      sha256 "df5d779e2becb11e50da306392d00ac8dabed6621aa2805a750d7fc9401b72e3"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.4/reeve-linux-x86_64.tar.gz"
      sha256 "c7c7ee2c06c75dcfefa0783e5c46a3e2d7e84612bb9affc2df94a2e1c7bb42c4"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
