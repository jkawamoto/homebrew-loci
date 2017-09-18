#
# loci.rb
#
# Copyright (c) 2016-2017 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
require 'rbconfig'
class Loci < Formula
  desc "Testing remote CI scripts locally"
  homepage "https://github.com/jkawamoto/loci"
  version "0.5.3"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.3/loci_0.5.3_darwin_amd64.zip"
      sha256 "55aae4ee99eaf99d9c6219bb02a6ec343772d9b22b8e2b722fe33d8ee3e00eda"
    when /linux/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.3/loci_0.5.3_linux_amd64.tar.gz"
      sha256 "593316f7f16ab57945c08d6d08b8138dae5257eeeb14ebc2b67cb55a086bd41e"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.3/loci_0.5.3_darwin_386.zip"
      sha256 "81bef19eaf6b7a63bd93f056ebd81db791593a9821d53fef7c5d1d27ec4ab929"
    when /linux/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.3/loci_0.5.3_linux_386.tar.gz"
      sha256 "7fff8030730f7eb4a98c0c534f2f4bd9ce1067c0cc482bc027bde32b43a6e49d"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "loci"
  end

  test do
    system "loci"
  end

end
