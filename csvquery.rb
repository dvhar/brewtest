class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://github.com/dvhar/csvquery"
  url "https://github.com/dvhar/csvquery/archive/1.60.tar.gz"
  sha256 "ef86865b5db5a4a618aa77d0f8f29b6d4a551de68760b9ee49801ec5ae43eb78"
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
