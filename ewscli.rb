class Ewscli < Formula
  version "0.0.3"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}-x86_64-darwin.tar.gz"
  sha256 "4b2dd46800ffb21b4381052ce830ad01f412924a44ea6cdd7bf1543b9e875216"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib/ewscli"
  end
end
