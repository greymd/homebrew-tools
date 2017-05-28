class TmuxXpanes < Formula
  desc "Ultimate terminal divider powered by tmux."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "cb70356b87a80101e3ba19ad75a3f76bb501ab54"
  version "2.1.1"
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
