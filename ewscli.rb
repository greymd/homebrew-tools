class Ewscli < Formula
  version "1.0.8"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}-x86_64-darwin.tar.gz"
  sha256 "6ff744fd0811dd8ec5c4971162dd499a9e391e9dd50bf7ff75a4307ee2cb1eff"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib/ewscli"
  end
end
