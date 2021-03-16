class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://github.com/dvhar/csvquery"
  url "https://github.com/dvhar/csvquery/archive/1.28.tar.gz"
  sha256 "ebe6604f139833d9b8eb404ffc4118976584b5f3b215967c22a0369224e93f39"
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
