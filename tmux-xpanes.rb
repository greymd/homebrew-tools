class TmuxXpanes < Formula
  desc "Ultimate terminal divider powered by tmux."
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes.git", :revision => "ba7f45d61a9b771570ad357231341af716546979"
  version "2.1.0"
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
