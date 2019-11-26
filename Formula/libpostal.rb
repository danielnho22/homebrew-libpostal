class Libpostal < Formula
  desc "C library for parsing/normalizing street addresses around the world"

  homepage "https://github.com/openvenues/libpostal"
  url "https://github.com/openvenues/libpostal/archive/v1.1-alpha.tar.gz"
  sha256 "c8a88eed70d8c09f68e1e69bcad35cb397e6ef11b3314e18a87b314c0a5b4e3a"
  head "https://github.com/openvenues/libpostal.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build

  def install
    system "./bootstrap.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--datadir=#{share}/libpostal-data"
    system "make"
    system "make", "install"
  end

  test do
  end

end
