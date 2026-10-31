class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.3/reeve-darwin-aarch64.tar.gz"
      sha256 "b54839b623324d9de8c52d9c8c2005a3a0719ce5f0896b87ade0e3a75d56f938"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.3/reeve-darwin-x86_64.tar.gz"
      sha256 "ee9aa1a8f677d890f6fbd5d49dee2e1ba89eb7f6d6100bd942485a2d4489c628"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.3/reeve-linux-aarch64.tar.gz"
      sha256 "8568818d8ce05c67a4913c9d5ea16809182b23a41cac843a6b3702f0d6f7814e"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.1.3/reeve-linux-x86_64.tar.gz"
      sha256 "7d27228e1736097d28a751515cd0ce98a46ef9dcadc61950b5ad94d18c01b85c"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
