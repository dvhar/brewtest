class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://github.com/dvhar/csvquery"
  url "https://github.com/dvhar/csvquery/archive/1.30.tar.gz"
  sha256 "591ed208a49dadcdb0b191f9847b16271c38cb0250a0780c624f24038e3fda32"
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
