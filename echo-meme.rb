class EchoMeme < Formula
  version "1.1.0"
  desc "Print your message as a part of various Japanese internet memes."
  homepage "https://github.com/greymd/echo-meme"
  url "https://github.com/greymd/echo-meme.git", :branch => "master"
  head "https://github.com/greymd/echo-meme.git", :branch => "master"
  # url "https://github.com/greymd/echo-meme/archive/v0.0.0.tar.gz"

  bottle :unneeded

  def install
    system "./install.sh", prefix
  end

  test do
    # Check options with valid combination
    pipe_output("#{bin}/echo-meme test", 0)
  end
end
