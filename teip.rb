class Teip < Formula
  version "2.3.0"
  desc "Masking tape to help commands \"do one thing well\""
  homepage "https://github.com/greymd/teip"

  # 64-bit ARM version for Apple Silicon
  if Hardware::CPU.arm?
    url "https://github.com/greymd/teip/releases/download/v#{version}/teip-#{version}.aarch64-apple-darwin.tar.gz"
    sha256 "6ee1e98340fd72e02a2d2d48940c36ae7d68bdd8d57d9ce96872cc87eb03ad55"
  else
    url "https://github.com/greymd/teip/releases/download/v#{version}/teip-#{version}.x86_64-apple-darwin.tar.gz"
    sha256 "0011b75b6766102a07fd3a33febea940cafe7b9d5dbd5433b2d8774ffce84f55"
  end

  def install
    bin.install "bin/teip"
    man1.install "man/teip.1"
    zsh_completion.install "completion/zsh/_teip"
    fish_completion.install "completion/fish/teip.fish"
    bash_completion.install "completion/bash/teip"
  end

  test do
    assert_match /BBA\nBBB/, pipe_output("#{bin}/teip -c 1-2 -- tr A B", "AAA\nBBB", 0)

    # Invalid option
    pipe_output("#{bin}/teip -c 2-1", "test", 1)
  end
end
