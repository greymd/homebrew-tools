class Teip < Formula
  version "1.2.2"
  desc "Highly efficient \"Masking tape\" for standard input"
  homepage "https://github.com/greymd/teip"
  url "https://github.com/greymd/teip/releases/download/v#{version}/teip-#{version}.x86_64-apple-darwin.tar.gz"
  sha256 "1c0150cea6ebb6d38212c6b9a3297a56004b667cde1d69a8b946a4d7745b250b"

  def install
    bin.install "bin/teip"
    man1.install "man/teip.1"
    zsh_completion.install "completion/zsh/_teip"
  end

  test do
    assert_match /BBA\nBBB/, pipe_output("#{bin}/teip -c 1-2 -- tr A B", "AAA\nBBB", 0)

    # Invalid option
    pipe_output("#{bin}/teip -c 2-1", "test", 1)
  end
end
