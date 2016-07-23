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
  version "0.1.5"

  if Hardware.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.1.5/loci_0.1.5_darwin_amd64.zip"
    sha256 "f3537221623b812847ed9c2b5fe0b742ecf983cfd4dd380f2d4af323716828a4"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.1.5/loci_0.1.5_darwin_386.zip"
    sha256 "137ffb673b171492aa7afd262bf1e0c4ecaf0def0f17cf8b3f173cee75efffa5"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
