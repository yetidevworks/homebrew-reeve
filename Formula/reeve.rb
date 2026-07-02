class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.8/reeve-darwin-aarch64.tar.gz"
      sha256 "4a3f7a1979ed80b089d243fbb8f5d8ec3b474bf5ec3d185f05de4d50d8336098"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.8/reeve-darwin-x86_64.tar.gz"
      sha256 "3c34139ee28c4914e09c853b0bf01cdabafe61a228d2f90af7a00cb2293bf32c"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.8/reeve-linux-aarch64.tar.gz"
      sha256 "200bd73ef997054614fcdb811a29222c5f4f944c5d9710b2b97dc1207d82e185"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.8/reeve-linux-x86_64.tar.gz"
      sha256 "94f8c6a4c9e63e846a09bea230d5c4d9510b4c57245814aa9ea4e78a507730e6"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
