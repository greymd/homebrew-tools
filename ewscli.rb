class Ewscli < Formula
  version "1.0.7"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}-x86_64-darwin.tar.gz"
  sha256 "e29630e2d36b1b9ee60de8a70681c7dcafd9b1016e52da9e83c7f9b1c7c71453"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib/ewscli"
  end
end
