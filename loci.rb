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
  version "0.4.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.0/loci_0.4.0_darwin_amd64.zip"
    sha256 "33c0dd942f71d1ddb5e0ff092940b120459e85374dcc7b1134752d17c9063e93"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.0/loci_0.4.0_darwin_386.zip"
    sha256 "647ce62cf80c1791f35c114e94878c8c1284fe47a68483cb42df880ad7d3dfa7"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
