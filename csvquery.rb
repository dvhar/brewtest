# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage ""
  url "https://github.com/dvhar/csvquery/archive/1.0.5.tar.gz"
  sha256 "12e3e88dddafefe0cee48307e4ad4b8f631566123e0ca917010f4512152668bb"
  license ""

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "cmake", "."
    system "make"
    bin.install "cql"
  end

end
