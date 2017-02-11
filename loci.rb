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
  version "0.4.3"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.3/loci_0.4.3_darwin_amd64.zip"
    sha256 "756ea27a16aa86ed287d154cb44863e7c9b9640a6c011959b1c29cba27912e0e"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.3/loci_0.4.3_darwin_386.zip"
    sha256 "224864926131121a9843164eb2ae18b5a08a7564fd484f7e21aa99319c547ae0"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
