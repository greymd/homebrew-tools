class Ewscli < Formula
  version "0.0.0"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}.x86_64-darwin.tar.gz"
  sha256 "8f3bba6795f3327e47f9dff14570dda35d13915916db91329fbca6598e031b4b"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib"
  end
end
