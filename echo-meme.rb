class EchoMeme < Formula
  desc "Print your message as a part of various Japanese internet memes."
  homepage "https://github.com/greymd/echo-meme"
  url "https://github.com/greymd/echo-meme/archive/v1.0.0.tar.gz"

  bottle :unneeded

  def install
    system "./install.sh", prefix
  end

  test do
    # Check options with valid combination
    pipe_output("#{bin}/echo-meme test", 0)
  end
end
