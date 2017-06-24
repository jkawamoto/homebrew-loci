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
  version "0.5.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.5.0/loci_0.5.0_darwin_amd64.zip"
    sha256 "cb851c0c0a8f3176b14557a6e7f3581bdd46be32345177f5f657c1725d86f121"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.5.0/loci_0.5.0_darwin_386.zip"
    sha256 "1d5b8eec0902e39e2bdb8b162b3e58ce8a0c044b9cb609b9181f47aa097f7f35"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
