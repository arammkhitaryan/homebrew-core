class Picsart < Formula
 desc "Picsart Background Removal and Image Enhancement - Allows users to remove backgrounds and upscale images without losing quality."
 homepage "https://picsart.com"
 url "https://github.com/PicsArt/picsart-creative-apis-cli/releases/download/v1.0.0/picsart-1.0.0.tar.gz", :using => :curl
 sha256 "your_sha256_checksum_here"

 def install
  system "./configure", "--prefix=#{prefix}"
  system "make", "install"
 end

 test do
  system "#{bin}/picsart", "--version"
 end
end