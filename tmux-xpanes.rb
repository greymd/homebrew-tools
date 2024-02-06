class TmuxXpanes < Formula
  desc "Awesome tmux-based terminal divider"
  homepage "https://github.com/greymd/tmux-xpanes"
  url "https://github.com/greymd/tmux-xpanes/archive/v4.2.0.tar.gz"

  depends_on "tmux" => :recommended

  def install
    system "./install.sh", prefix
  end

  test do
    # Check options with valid combination
    pipe_output("#{bin}/xpanes --dry-run -c echo", "hello", 0)

    # Check options with invalid combination (-n requires number)
    pipe_output("#{bin}/xpanes --dry-run -n foo -c echo 2>&1", "hello", 4)
  end
end
