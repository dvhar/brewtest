# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage ""
  url "https://github.com/dvhar/csvquery/archive/1.0.3.tar.gz"
  sha256 "d97912d406f7712a19f99b974ef3429db7a07126cd4617f16ba84e961a523cd9"
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
