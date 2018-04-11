# Some comments are needed for the Makefile to substitute lines, do not remove!
class MuCli < Formula
  desc "A full-stack DevOps on AWS tool"
  homepage "https://getmu.io"
  if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5/mu-darwin-amd64" # The MacOS master url
    sha256 "20105a690a015bf97e0f2c5ff35b762fc2a44fc4faa27744258da06c83abfcd2" # The MacOS master sha256sum
  elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.5/mu-linux-amd64" # The Linux master url
    sha256 "fd1732dbec3c08715c46e0ccce655a0caa8adcc345a989ef1e1362e585000e36" # The Linux master sha256sum
  end
  version "1.4.5" # The master version
  devel do
    if OS.mac?
    url "https://github.com/stelligent/mu/releases/download/v1.4.6-develop/mu-darwin-amd64" # The MacOS develop url
    sha256 "d6a560062aaba25db6225aca7540a96ee53bf92cb3eb42ba30c04d285964d2eb" # The MacOS develop sha256sum
    elsif OS.linux?
    url "https://github.com/stelligent/mu/releases/download/v1.4.6-develop/mu-linux-amd64" # The Linux develop url
    sha256 "3e89832a36c9ba77a63b0497ea99c94b0b382463b566137585cdc077193f5602" # The Linux develop sha256sum
    end
    version "1.4.6-develop" # The develop version
  end

  bottle :unneeded

  def install
    if OS.mac?
      bin.install "mu-darwin-amd64"
      mv "#{bin}/mu-darwin-amd64", "#{bin}/mu"
    elsif OS.linux?
      bin.install "mu-linux-amd64"
      mv "#{bin}/mu-linux-amd64", "#{bin}/mu"
    end
  end

  test do
    system "#{bin}/mu" ,"--version"
  end
end
