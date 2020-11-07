# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage ""
  url "https://github.com/dvhar/csvquery/archive/1.0.4.tar.gz"
  sha256 "b4e809833beb2c062b1a87fa2e3b0f123714579de26765a8ab06ad19ab3c82ec"
  license ""

  depends_on "gcc" => :build
  depends_on "cmake" => :build
  depends_on "tbb"
  depends_on "boost"

  def install
    gcc = Dir.glob('/usr/local/bin/gcc*').select{ |f| f =~ /gcc(-[0-9]+)?$/ }[0]
    gpp = Dir.glob('/usr/local/bin/g++*').select{ |f| f =~ /g\+\+(-[0-9]+)?$/ }[0]
    executionpath = `find -L /usr/local/include -name "*execution"`.split("\n").select{ |f| f =~ /c\+\+/}[0].chomp("/execution")
    ENV["CC"] = gcc
    ENV["CXX"] = gpp
    ENV["CXXFLAGS"] = "-I#{executionpath}"
    system "cmake", "."
    system "make"
    bin.install "cql"
  end

end
