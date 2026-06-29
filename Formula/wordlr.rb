class Wordlr < Formula
  desc "Clone de Wordle pour le terminal"
  homepage "https://github.com/lwsbrdx/wordlr"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-arm64.tar.gz"
      sha256 "561e973e05258f0bc9b6ec7124396df2329d6281c3581c6c3d3fe4b930caae8b"
    else
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-x86_64.tar.gz"
      sha256 "7dc6942fe26c477da3480034846b67e9c6339b7f3aad4ce92dc226a74d1455bc"
    end
  end

  on_linux do
    url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-linux-x86_64.tar.gz"
    sha256 "bd9cffeea79ed5134ad29550459c7a5bb3574d073606206e9e10f4f99877ee50"
  end

  def install
    bin.install "wordlr"
  end

  test do
    assert_predicate bin/"wordlr", :executable?
  end
end
