# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
require 'etc'
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage ""
  url "https://github.com/dvhar/csvquery/archive/1.0.0.tar.gz"
  sha256 "e516ed22278a511aa8cbfd5b095f48756ac4e66ca1fa6b1a9ead4951411f5636"
  license ""

  depends_on "gcc" => :build
  depends_on "cmake" => :build
  depends_on "tbb"
  depends_on "nlohmann-json"
  depends_on "boost"

  def install
    gcc = Dir.glob('/usr/local/bin/gcc*').select{ |f| f =~ /gcc(-[0-9]+)?$/ }[0]
    gpp = Dir.glob('/usr/local/bin/g++*').select{ |f| f =~ /g\+\+(-[0-9]+)?$/ }[0]
    ncores = Etc.nprocessors
    system({ "CC" => gcc, "CXX" => gpp }, "cmake", ".")
    system "make", "-j"+ncores.to_s
    cp_r "cql", prefix
  end

end
