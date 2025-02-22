# This file was generated by GoReleaser. DO NOT EDIT.
class ConfigLint < Formula
  desc ""
  homepage ""
  version "0.0.37"

  if OS.mac?
    url "https://github.com/stelligent/config-lint/releases/download/v0.0.37/config-lint_0.0.37_Darwin_x86_64.tar.gz"
    sha256 "505455957b2b29ad77b62cc26f4d1efe7871a1316bc31169c24b7a53c78822b2"
  elsif OS.linux?
    url "https://github.com/stelligent/config-lint/releases/download/v0.0.37/config-lint_0.0.37_Linux_x86_64.tar.gz"
    sha256 "03fe3db5694b35fe7b90a3bb84910d1ec4ea176aae199a620a9f0b8bac39c94a"
  end

  def install
    bin.install "config-lint"
  end
end
