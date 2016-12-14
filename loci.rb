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
  version "0.3.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.0/loci_0.3.0_darwin_amd64.zip"
    sha256 "4d6cccf74fb3607dfb06463fce15d2bb1bda039f32a457777af1bdab29e9e20c"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.0/loci_0.3.0_darwin_386.zip"
    sha256 "7e9f18905ef8da5c90cf8288744928adf5622d4f2d1ee0f4ad379622a0eae0d7"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
