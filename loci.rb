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
  version "0.3.2"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.2/loci_0.3.2_darwin_amd64.zip"
    sha256 "c1e78a595bc547424b3392bcbccce6c449830b9672e6deffabc3fb580a84fd7b"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.2/loci_0.3.2_darwin_386.zip"
    sha256 "a8fad189dfbba8570e2a38930c75d216ff2a7e9e10117d743177e0062fc8b126"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
