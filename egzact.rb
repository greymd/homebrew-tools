class Egzact < Formula
  version "2.0.0"
  desc "Generate flexible patterns on the shell"
  homepage "https://github.com/greymd/egzact"
  url "https://github.com/greymd/egzact.git", :branch => "master"

  def install
    system "./install.sh", prefix
  end
end
