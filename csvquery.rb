# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://davosaur.com/csv"
  url "https://github.com/dvhar/csvquery/archive/1.23.tar.gz"
  sha256 "c8596ba6f7c62951e53442c524392cf0a7e01fb62ed895e707520b61d36b40f4"
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
