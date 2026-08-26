class Reeve < Formula
  desc "Localhost web dev stack manager: web servers, per-vhost PHP, SSL, DNS"
  homepage "https://github.com/yetidevworks/reeve"
  license "MIT"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.0/reeve-darwin-aarch64.tar.gz"
      sha256 "b56c4d893e38b080b790de836137256186e85d2c5373a62d4fd85105ec13f475"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.0/reeve-darwin-x86_64.tar.gz"
      sha256 "5d61d705a27922ecf0703cd454f8c19b69d96424438dbbd3ffc491be4c8011df"
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.0/reeve-linux-aarch64.tar.gz"
      sha256 "1ef9221f3f393c84a97acfb88ec80077c68c4118fd8ec60bd068474728ceb440"
    else
      url "https://github.com/yetidevworks/reeve/releases/download/v1.0.0/reeve-linux-x86_64.tar.gz"
      sha256 "61ccfe19a5824fecd447d669edfe3085acf8a82c6ffe88ccf29370d9ed8586e4"
    end
  end

  def install
    bin.install "reeve"
  end

  test do
    assert_match "reeve", shell_output("#{bin}/reeve --version")
  end
end
