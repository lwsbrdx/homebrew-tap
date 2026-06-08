class Wordlr < Formula
  desc "Clone de Wordle pour le terminal"
  homepage "https://github.com/lwsbrdx/wordlr"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-arm64.tar.gz"
      sha256 "cdcd08613e6c2792dabe123ddd8b2d6d955890ce0b058f20c8724198ec91323f"
    else
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-x86_64.tar.gz"
      sha256 "f0e9630acbf6f28ffd98d94402622af0176354f838585c4e2ddbff3cc4160f86"
    end
  end

  on_linux do
    url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-linux-x86_64.tar.gz"
    sha256 "5dad345c0f5ba0ba1d72f06d246c5c7aba7151835da7b289a734d083c60d1274"
  end

  def install
    bin.install "wordlr"
  end

  test do
    assert_predicate bin/"wordlr", :executable?
  end
end
