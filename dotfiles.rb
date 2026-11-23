class Dotfiles < Formula
  desc "Set up a machine from a dotfiles repo and keep it linked"
  homepage "https://github.com/joeygrasso/dotfiles-cli"
  url "https://github.com/joeygrasso/dotfiles-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a3db8ddce8b3cf25817dd6c6582df0698adc3f577b830ba97879bf5c50d1c3f0"
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
