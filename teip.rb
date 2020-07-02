class Teip < Formula
  version "1.2.1"
  desc "Highly efficient \"Masking tape\" for standard input"
  homepage "https://github.com/greymd/teip"
  url "https://github.com/greymd/teip/releases/download/v#{version}/teip-#{version}.x86_64-apple-darwin.tar.gz"
  sha256 "363c522356f27051b227a7124a67a886bcb93cbd2d900711156b3c1419141a73"

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
