# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://davosaur.com/csv"
  url "https://github.com/dvhar/csvquery/archive/1.22.tar.gz"
  sha256 "7f47dea64ea43bf603fed4969278d4bdcab5a0c9a2ff3dbc6be863dd31dcbf49"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "cmake", "."
    system "make"
    system "mv", "cql", "csvquery"
    bin.install "csvquery"
  end

end
