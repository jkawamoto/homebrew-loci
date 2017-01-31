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
  version "0.4.1"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.1/loci_0.4.1_darwin_amd64.zip"
    sha256 "2a373711ac835857a3fdcb1bfeda38acac3a6cb60e4a76b280d8c4c7fd83daa3"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.1/loci_0.4.1_darwin_386.zip"
    sha256 "343113a6a3bfee040497e9ebb8f64d9f085b35dde561ed48437f14263738ba28"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
