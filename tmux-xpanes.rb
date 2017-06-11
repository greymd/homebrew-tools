class TmuxXpanes < Formula
  desc "Ultimate terminal divider powered by tmux."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "0cf0110e2fad1d1fad196b51e9ad5d984bfdd9c2"
  version "2.1.2"
  head "https://github.com/greymd/tmux-xpanes.git", :branch => "master"
  depends_on "tmux"

  def install
    %w[xpanes tmux-xpanes].each do |cmd|
      bin.install "bin/#{cmd}"
      man1.install "man/#{cmd}.1"
    end
  end

  test do
    system "false"
  end
end
