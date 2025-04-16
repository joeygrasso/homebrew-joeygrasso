class Clonerepo < Formula
  desc "Simple script for cloning repos with additional options"
  homepage "https://github.com/joeygrasso/cloneRepo"

  version "1.0.2"
  sha256 "9e8396a70216c14f7d749588d49d57902292f2958704779ed782e41390f96d28"

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
