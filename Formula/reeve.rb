class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "0.3.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.1/reeve-darwin-aarch64.tar.gz"
      sha256 "42a384cd7123c94ecda5e26492e14e20437d52dbb3f357fe46dddb55b91f3f00"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.1/reeve-darwin-x86_64.tar.gz"
      sha256 "abbbfc8c1b10f50f1ae4a595192e77bbb768cf20260de31a48d8fa62c0d27a5b"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.1/reeve-linux-aarch64.tar.gz"
      sha256 "0444bb43b560b23beaf04ffe7bea16106e7da05144d675bb98f0ce8c3df22445"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v0.3.1/reeve-linux-x86_64.tar.gz"
      sha256 "fafa7c981984298609c15dd856c82fcb2f710d1e114722406b0d233acc836464"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
