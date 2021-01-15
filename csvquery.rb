# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://davosaur.com/csv"
  url "https://github.com/dvhar/csvquery/archive/1.26.tar.gz"
  sha256 "d603f03c72abf54f34d4ba0f2157c41edbce5f29b798644c5eb8d1c4622b3477"
  license "GLP-3"

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    Dir.chdir "build"
    system "cmake", ".."
    system "make"
    system "mv", "cql", "csvquery"
    bin.install "csvquery"
  end

end
