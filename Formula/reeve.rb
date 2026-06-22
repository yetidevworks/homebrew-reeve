class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.6/reeve-darwin-aarch64.tar.gz"
      sha256 "c3e14389f62558bebdca13751a88ef0a230cd9f8707c0a4635bd5519f061d389"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.6/reeve-darwin-x86_64.tar.gz"
      sha256 "0f1bfa5b19dcaf181145c17bdd28ffc2007e8ffbcbfe2aca06d60ad32def0ae8"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.6/reeve-linux-aarch64.tar.gz"
      sha256 "3c11299c0e8af3aa49b309c739367ebac7a567420638a5fb5fc40e0c6e0a5b5d"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.6/reeve-linux-x86_64.tar.gz"
      sha256 "19e4b04b1d2f34033be777331cf414cb5d1f0374eb8184af94d803194d000a01"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
