class Egzact < Formula
  version "1.3.2"
  desc "Generate flexible patterns on the shell"
  homepage "https://github.com/greymd/egzact"
  url "https://github.com/greymd/egzact.git", :branch => "master"

  bottle :unneeded

  def install
    system "./install.sh", prefix
  end
end
