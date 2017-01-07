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
  version "0.3.1"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.1/loci_0.3.1_darwin_amd64.zip"
    sha256 "e3336fa3585ec39e548400121926a03056c6e74f5af5fa21e64b66d04a7cc8ae"
  else
    url "https://github.com/jkawamoto/loci/releases/download/v0.3.1/loci_0.3.1_darwin_386.zip"
    sha256 "0590c0323a286098f99c7930b8270dc7b26fc6a31dd8e94c6dd295f2fb8d1a14"
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
