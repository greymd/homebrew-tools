class Issagen < Formula
  version "1.0.0"
  desc "Issagen: Issa generator"
  homepage "https://github.com/greymd/issagen"
  url "https://github.com/greymd/issagen/archive/v1.0.0.tar.gz"

  depends_on "imagemagick" => :recommended

  def install
    system "./install.sh", prefix
  end

  test do
    # Check options with valid combination
    pipe_output("#{bin}/issagen --version", "v1.0.0", 0)
  end
end
