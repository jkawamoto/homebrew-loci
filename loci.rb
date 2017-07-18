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
  version "0.5.2"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.2/loci_0.5.2_darwin_amd64.zip"
      sha256 "fa4d7ae11fc51adc5d24c1c3e11ea61fcbe918a8df43951119a71dd046dbf73f"
    when /linux/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.2/loci_0.5.2_linux_amd64.tar.gz"
      sha256 "2f613e50b147a3c1973e0bdc8c0eb5b2f490ae45a6749f9d34e57682a8f0bb51"
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
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.2/loci_0.5.2_darwin_386.zip"
      sha256 "71eb8de5a7c6a69a4da456658df269a257d672aa857fa0599271ca49bfbfa3cc"
    when /linux/
      url "https://github.com/jkawamoto/loci/releases/download/v0.5.2/loci_0.5.2_linux_386.tar.gz"
      sha256 "a2f40dc973e69f7a64f28e128c5265052a7761afe80052390c8cf9515b9f4aa6"
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
