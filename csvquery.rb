# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
require 'etc'
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage ""
  url "https://github.com/dvhar/csvquery/archive/1.0.0.tar.gz"
  sha256 "e516ed22278a511aa8cbfd5b095f48756ac4e66ca1fa6b1a9ead4951411f5636"
  license ""

  depends_on "gcc"
  depends_on "tbb"
  depends_on "nlohmann-json"
  depends_on "boost"
  depends_on "cmake" => :build

  def install
    gcc = Dir.glob('/usr/local/bin/gcc*').select{ |f| f =~ /gcc(-[0-9]+)?$/ }[0]
    gpp = Dir.glob('/usr/local/bin/g++*').select{ |f| f =~ /g\+\+(-[0-9]+)?$/ }[0]
    ncores = Etc.nprocessors
    system({ "CC" => gcc, "CXX" => gpp }, "cmake", ".")
    system "make", "-j"+ncores.to_s
    cp_r "cql", prefix
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test csvquery`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
