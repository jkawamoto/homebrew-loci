#
# assets/formula.rb
#
# Copyright (c) 2016-2017 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Loci < Formula
  desc "Testing remote CI scripts locally"
  homepage "https://github.com/jkawamoto/loci"
  version "0.4.5"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.5/loci_0.4.5_darwin_amd64.zip"
    sha256 "5a01c1af08febc389248a2fa40d2c196f04fe1236da70dc2affa186424a51b34"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.5/loci_0.4.5_darwin_386.zip"
    sha256 "14c9c00f43e2ed5d7f3e535a827b0dc8a96416edfe1554de3d46c24c62b35936"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
