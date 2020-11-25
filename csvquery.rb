# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://davosaur.com/csv"
  url "https://github.com/dvhar/csvquery/archive/1.21.tar.gz"
  sha256 "1816a67b718bd7bc6cb6bc3e418d30c53378f39b1ac66555f300d04bcc6e7792"
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
