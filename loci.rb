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
  version "0.5.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.1/loci_0.5.1_darwin_amd64.zip"
      sha256 "2bf4f6eda0d5fe1b40ad398e896df79454d74f9eff36c182a43c3f042d6f0c36"
    when /linux/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.1/loci_0.5.1_linux_amd64.tar.gz"
      sha256 "870fb525539a5fdb9a5d4c293cec2b9670f589cc32ee6af9eaebde81409875f9"
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
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.1/loci_0.5.1_darwin_386.zip"
      sha256 "3da405181bf107586cec463c6cedf173fffec6345e143292c12fd2baf72b1742"
    when /linux/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.1/loci_0.5.1_linux_386.tar.gz"
      sha256 "477159a25c26004deb1ce8549aa4595e181258217fd23dd267bb629a55d75e41"
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
