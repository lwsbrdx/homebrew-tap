class Wordlr < Formula
  desc "Clone de Wordle pour le terminal"
  homepage "https://github.com/lwsbrdx/wordlr"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-arm64.tar.gz"
      sha256 "1258af773440d08b90c186b2bd01a738bf37c7b770bd6086f5896c75495c55fe"
    else
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-x86_64.tar.gz"
      sha256 "f0dade1ec141a107c15ed678d8e09dd3f32cf55f48981a1d410d14c44d0daf18"
    end
  end

  on_linux do
    url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-linux-x86_64.tar.gz"
    sha256 "c05c162761d995fb9f182b1af7470a9f9e53d917504a8dc5035714e63f4e554a"
  end

  def install
    bin.install "wordlr"
  end

  test do
    assert_predicate bin/"wordlr", :executable?
  end
end
