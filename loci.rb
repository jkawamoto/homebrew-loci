#
# assets/formula.go
#
# Copyright (c) 2016 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Loci < Formula
  desc "Local Testing for CI"
  homepage "https://github.com/jkawamoto/loci"
  version "0.1.4"

  if Hardware.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/0.1.4/loci_0.1.4_darwin_amd64.zip"
    sha256 "23d6de269baf36dcae193a5ef1f509d621ef0b0d489787a22b33ab1d94556338"
  else
    url "https://github.com/jkawamoto/loci/releases/download/0.1.4/loci_0.1.4_darwin_386.zip"
    sha256 "2d1761d40006db0839a708d081cc22391e95901bb080d1575ca66c30204d32c7"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
