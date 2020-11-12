# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Csvquery < Formula
  desc "SQL interpreter for big csv files"
  homepage "https://davosaur.com/csv"
  url "https://github.com/dvhar/csvquery/archive/1.13.tar.gz"
  sha256 "d3f6efe99fb200c44e88b7c11fe302ed8323dc9e19fa86958e349a2915583d3d"
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
