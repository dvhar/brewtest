class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://github.com/dvhar/csvquery"
  url "https://github.com/dvhar/csvquery/archive/1.40.tar.gz"
  sha256 "7764643ed70d42da39bbf7fbfd08f08d761da4dcc1d7b03d5c0d0fad40240a27  "
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
