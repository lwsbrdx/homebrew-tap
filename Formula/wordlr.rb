class Wordlr < Formula
  desc "Clone de Wordle pour le terminal"
  homepage "https://github.com/lwsbrdx/wordlr"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-arm64.tar.gz"
      sha256 "1c78e684666029b4a1500ffee66463e76b4954b5a6e1977bb17e97c276ee1fc7"
    else
      url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-macos-x86_64.tar.gz"
      sha256 "1aea83b5e2d0567a88b3d0aa848320b823b140e492eb4a775e46029c0df7be54"
    end
  end

  on_linux do
    url "https://github.com/lwsbrdx/wordlr/releases/download/v#{version}/wordlr-linux-x86_64.tar.gz"
    sha256 "30750d2971fda6e594a41bffc04bd2220822314e5c595088636fe92b5021d580"
  end

  def install
    bin.install "wordlr"
  end

  test do
    assert_predicate bin/"wordlr", :executable?
  end
end
