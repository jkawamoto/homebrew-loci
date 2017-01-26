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
  version "0.3.5"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.5/loci_0.3.5_darwin_amd64.zip"
    sha256 "78df1acc9bc168b7c4080189ff23dd39ea138896d3e348ae71fc489664e66779"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.5/loci_0.3.5_darwin_386.zip"
    sha256 "6e0973ce271816810bcddf4905504e17e8ac8197c7f47ff97b1581b11a5d1668"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
