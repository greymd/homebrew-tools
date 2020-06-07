class Teip < Formula
  desc "Highly efficient \"Masking tape\" for standard input"
  homepage "https://github.com/greymd/teip"
  url "https://github.com/greymd/teip/releases/download/v1.1.2/teip-1.1.2.x86_64-apple-darwin.tar.gz"
  sha256 "8c3f8ee43eea148de108c32df05054a54c4e947bd671e8676f3fbacddc73cca2"

  def install
    bin.install "bin/teip"
    man1.install "man/teip.1"
    ## tar should contains completion dir
    zsh_completion.install "completion/zsh/_teip"
  end

  test do
    assert_match /BBA\nBBB/, pipe_output("#{bin}/teip -c 1-2 -- tr A B", "AAA\nBBB", 0)

    # Invalid option
    pipe_output("#{bin}/teip -c 2-1", "test", 1)
  end
end
