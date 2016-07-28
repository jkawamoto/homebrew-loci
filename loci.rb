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
  version "0.2.0"

  if Hardware.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.2.0/loci_0.2.0_darwin_amd64.zip"
    sha256 "d983023436e56d08a47a10a4ca2e56b8b72f10231c2e07878411922990b8e96c"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.2.0/loci_0.2.0_darwin_386.zip"
    sha256 "89c3ea303a4172a3f6892b2263d47862694c685ca9acfd4df41b34279d60c4fe"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
