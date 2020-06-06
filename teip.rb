class Teip < Formula
  desc "Highly efficient \"Masking tape\" for standard input"
  homepage "https://github.com/greymd/teip"
  url "https://github.com/greymd/teip/releases/download/v1.1.0/teip-1.1.0.x86_64-apple-darwin.tar.gz"
  sha256 "f0e4b675af971691679da5e9f6e28000bbec06ce2297bd7f2b39a1f20508bb45"

  depends_on "pcre" => :recommended

  def install
    bin.install "bin/teip"
    man1.install "man/teip.1"
    ## tar should contains completion dir
    # zsh_completion.install "completion/zsh/_teip"
  end

  test do
    assert_match /BBA\nBBB/, pipe_output("#{bin}/teip -c 1-2 -- tr A B", "AAA\nBBB", 0)

    # Invalid option
    pipe_output("#{bin}/teip -c 2-1", "test", 1)
  end
end
