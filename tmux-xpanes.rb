class TmuxXpanes < Formula
  desc "Smart and awesome way to open on tmux panes."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "41dd1873e273c7a2fabacaa5d08902f792b06d95"
  version "2.0.1"
  head "https://github.com/greymd/tmux-xpanes.git", :branch => "master"
  depends_on "tmux"

  def install
    %w[xpanes tmux-xpanes].each do |cmd|
      bin.install "bin/#{cmd}"
    end
  end

  test do
    system "false"
  end
end
