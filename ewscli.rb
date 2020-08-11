class Ewscli < Formula
  version "0.0.1"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}-x86_64-darwin.tar.gz"
  sha256 "84bd8871efc4c7c8595357fb84d470cb27900766fe04611595410006b654a7d8"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib/ewscli"
  end
end
