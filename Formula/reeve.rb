class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.3/reeve-darwin-aarch64.tar.gz"
      sha256 "0e5f73772776da2e4a37f55c53e41e9f75ebdb28b850fb8713a8b93417a05827"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.3/reeve-darwin-x86_64.tar.gz"
      sha256 "f2978ada628198bb99fcbaf162099f92b61a2a0f126b9248a7f1eff7e945ca38"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.3/reeve-linux-aarch64.tar.gz"
      sha256 "fc58fbd8dc74154d804fdbf04cde3f42aa4f42cf4cd425e1d939ee774c0c7c38"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.3/reeve-linux-x86_64.tar.gz"
      sha256 "7b3c3e1557658e557ca087e5c52c6a6bab118802e685f738dd9ba03ca249036f"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
