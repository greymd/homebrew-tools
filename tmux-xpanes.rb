class TmuxXpanes < Formula
  desc "Smart and awesome way to open on tmux panes."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "4125996d5c80829d3029ad6bae2b27bbbab7ed21"
  version "1.3.0"
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
