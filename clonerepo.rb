class Clonerepo < Formula
  desc "Simple script for cloning repos with additional options"
  homepage "https://github.com/joeygrasso/cloneRepo"

  version "1.0.3"
  sha256 "2df02a7d75b3d4c6397c57268de7324de0807cb8d36139c99f7214fe8e9ffbe6"

  url "https://github.com/joeygrasso/cloneRepo/archive/refs/tags/v#{version}.tar.gz"

  depends_on "bash"
  depends_on "git"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"clonerepo")
  end

  test do
    system "clonerepo -v"
  end
end
