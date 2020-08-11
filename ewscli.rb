class Ewscli < Formula
  version "0.0.2"
  desc "Exchange Web Service CLI"
  homepage "https://github.com/greymd/ewscli"
  url "https://github.com/greymd/ewscli/releases/download/v#{version}/ewscli-#{version}-x86_64-darwin.tar.gz"
  sha256 "c2712e4bff6c9774f36331e4b51c22d40270616d422f48fcadd5fcbbfe05cf28"

  bottle :unneeded

  def install
    bin.install "bin/ewscli"
    lib.install "lib/ewscli"
  end
end
