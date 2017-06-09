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
  version "0.4.4"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.4/loci_0.4.4_darwin_amd64.zip"
    sha256 "fb432d377a832001a9989ea2864c85c29b5a81af28d44d5912cc89e3103aada9"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.4.4/loci_0.4.4_darwin_386.zip"
    sha256 "533416b9c01c98cc39bcae7bf58fcc73bb6121cafeb89165aa901a0435de8351"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
