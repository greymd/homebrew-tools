class TmuxXpanes < Formula
  desc "Smart and awesome way to open on tmux panes."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "f9187f14e9e6a5be1d43965ab954d5b0da377776"
  version "2.0.0"
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
