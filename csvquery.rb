# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage ""
  url "https://github.com/dvhar/csvquery/archive/1.0.6.tar.gz"
  sha256 "72bf5faaed9cc8e47083b4a1cfa054dde1da177ac8f9e197b4a80fae542654c3"
  license ""

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "cmake", "."
    system "make"
    bin.install "cql"
  end

end
