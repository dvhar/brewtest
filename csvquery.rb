class Csvquery < Formula
  desc "SQL-like interpreter for big csv files"
  homepage "https://github.com/dvhar/csvquery"
  url "https://github.com/dvhar/csvquery/archive/1.29.tar.gz"
  sha256 "42d72756a83c97aed872712bcde4cf06bc1a7132537a85a62cf0ab6c40efffc6"
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
