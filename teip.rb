class Teip < Formula
  version "2.0.0"
  desc "Highly efficient \"Masking tape\" for standard input"
  homepage "https://github.com/greymd/teip"
  url "https://github.com/greymd/teip/releases/download/v#{version}/teip-#{version}.x86_64-apple-darwin.tar.gz"
  sha256 "0e575042792bb3e2e5751baef3f21115e230f5b7e9387be90a497cec643e6258"

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
