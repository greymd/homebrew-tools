class TmuxXpanes < Formula
  desc "Ultimate terminal divider powered by tmux."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "d5fb7c928e90dbfa33159469e3719f9d8632c72a"
  version "2.2.0"
  head "https://github.com/greymd/tmux-xpanes.git", :branch => "master"
  depends_on "tmux"  => :recommended

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
