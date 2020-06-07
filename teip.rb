class Teip < Formula
  desc "Highly efficient \"Masking tape\" for standard input"
  homepage "https://github.com/greymd/teip"
  url "https://github.com/greymd/teip/releases/download/v1.1.2/teip-1.1.2.x86_64-apple-darwin.tar.gz"
  sha256 "01bfa4b2b81ff3f31efc822cc4aa1da198d540a3a522f8699c6a9d4320be9834"

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
