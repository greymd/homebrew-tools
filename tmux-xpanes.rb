class TmuxXpanes < Formula
  desc "Ultimate terminal divider powered by tmux."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "28c902a4d39053b01bd2699339ce0c0e15da2131"
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
