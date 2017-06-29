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
  version "0.5.1"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.5.1/loci_0.5.1_darwin_amd64.zip"
    sha256 "2bf4f6eda0d5fe1b40ad398e896df79454d74f9eff36c182a43c3f042d6f0c36"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.5.1/loci_0.5.1_darwin_386.zip"
    sha256 "3da405181bf107586cec463c6cedf173fffec6345e143292c12fd2baf72b1742"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
