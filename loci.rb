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
  version "0.3.4"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.4/loci_0.3.4_darwin_amd64.zip"
    sha256 "0adca3b7122bebb7d8f1c97cb244807f587a55e7d31486a33ada263060cf28b0"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.4/loci_0.3.4_darwin_386.zip"
    sha256 "05222751350165ffcdbb45883cbf9ce76c867b7d80120c985095f9e8e87fb2e0"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
