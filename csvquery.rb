# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage "https://davosaur.com/csv"
  url "https://github.com/dvhar/csvquery/archive/1.14.tar.gz"
  sha256 "1f9b3508eb3c200784ca86a0e5e7689e352d14af1028be523dfb2288b205aadd"
  license ""

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "cmake", "."
    system "make"
    system "mv", "cql", "csvquery"
    bin.install "csvquery"
  end

end
