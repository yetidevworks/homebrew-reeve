class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.2/reeve-darwin-aarch64.tar.gz"
      sha256 "00f213f30b6ffd9e07170c2d76df15b0d71d0150bcddf439efaaf2798d8c56be"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.2/reeve-darwin-x86_64.tar.gz"
      sha256 "50c31a2be73e3033a8af13aa2fbac294b431f7f82e84503534e5f3cb6a045915"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.2/reeve-linux-aarch64.tar.gz"
      sha256 "4888f0cf3f2f1006f0e8d1db246b50a4974a98d6a3812e30a08ec0d934aabc21"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.2/reeve-linux-x86_64.tar.gz"
      sha256 "8cf7f093da39c625bd43d2d715d64ed0528885fbac770d192ce5c5f7d4765393"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
