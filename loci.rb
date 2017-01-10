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
  version "0.3.3"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.3/loci_0.3.3_darwin_amd64.zip"
    sha256 "30f344a0a827a7860f9fd3768d09533b2511b7ff0dbec69803021a20947d7327"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.3/loci_0.3.3_darwin_386.zip"
    sha256 "925c6ee09dd684d208475e80d670256ab48bddc64af3014eebc8de3afa22b835"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
