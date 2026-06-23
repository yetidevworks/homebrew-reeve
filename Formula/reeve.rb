class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.2.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.7/reeve-darwin-aarch64.tar.gz"
      sha256 "146e22be84ecde6917d299bd7e7137302772bf70e7fec2579c544b89f3194815"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.7/reeve-darwin-x86_64.tar.gz"
      sha256 "8697d1c70b68b449cb0bb02a8cbfa92294cb130fdc1b8472f2a0f271513ffe94"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.7/reeve-linux-aarch64.tar.gz"
      sha256 "78f3f37aa8004ca4a51ff5cec3a9a47949a861f7c929d89f71a6abc950616b38"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.2.7/reeve-linux-x86_64.tar.gz"
      sha256 "a62ce5e5d962446d8cdf3cb7471b6e3a40e26928a895f2d8fb8c669c761b352f"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
