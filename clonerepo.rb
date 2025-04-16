class Clonerepo < Formula
  desc "Simple script for cloning repos with additional options"
  homepage "https://github.com/joeygrasso/cloneRepo"

  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

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
