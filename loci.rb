#
# assets/formula.go
#
# Copyright (c) 2016 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Loci < Formula
  desc "Local Testing for CI"
  homepage "https://github.com/jkawamoto/loci"
  version "0.2.1"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.2.1/loci_0.2.1_darwin_amd64.zip"
    sha256 "59aa436bcc7610d9b9aa5c077f3b2af9aacb232b39623190eef49cfdd9c92220"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.2.1/loci_0.2.1_darwin_386.zip"
    sha256 "d6b00b1e3edf522cad72861c05d7431b8959a7277b6224528a3517aa04703e28"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
