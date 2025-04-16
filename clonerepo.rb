class Clonerepo < Formula
  desc "Simple script for cloning repos with additional options"
  homepage "https://github.com/joeygrasso/cloneRepo"

  version "1.0.0"
  sha256 "ee0f4dc5bc4bbc8241a8067ffd4cd9495448adb121bbf1d049c0e394f872b0c3"

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
