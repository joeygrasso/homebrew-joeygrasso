class Clonerepo < Formula
  desc "Simple script for cloning repos with additional options"
  homepage "https://github.com/joeygrasso/cloneRepo"

  version "1.0.1"
  sha256 "308a201f9c98c02828fd3b9077a3977be678970fa18751e51b04b5afc73958d8"

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
