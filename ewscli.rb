class Ewscli < Formula
  version "1.0.3"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}-x86_64-darwin.tar.gz"
  sha256 "b096560dd420622d7d707003532db3ef8e7bd26f100e3c30378a640dbaf61895"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib/ewscli"
  end
end
