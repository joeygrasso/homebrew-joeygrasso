class Dotfiles < Formula
  desc "Set up a machine from a dotfiles repo and keep it linked"
  homepage "https://github.com/joeygrasso/dotfiles-cli"
  url "https://github.com/joeygrasso/dotfiles-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2af4b9f0046f7cca48dad0a7dc1d42cb1b1fdfc6c61c0dd4cc26c511b2585be2"
  head "https://github.com/joeygrasso/dotfiles-cli.git", branch: "main"

  depends_on "git"

  def install
    # The dotfiles themselves live in a separate (private) git checkout made by `dotfiles init`.
    libexec.install "bin", "lib"
    bin.write_exec_script libexec/"bin/dotfiles"
  end

  test do
    assert_match "USAGE: dotfiles", shell_output("#{bin}/dotfiles --help")
  end
end
