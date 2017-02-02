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
  version "0.4.2"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.2/loci_0.4.2_darwin_amd64.zip"
    sha256 "f8758b8cddfec33c47ba271536bc29bbebb3349725bc46d28df955d2a2dcb296"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.2/loci_0.4.2_darwin_386.zip"
    sha256 "e02b15f1db659a3dbddad7c83b50601816266efcd119564c1d9af497e70a2131"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
