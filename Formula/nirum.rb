require "language/haskell"

class Nirum < Formula
  include Language::Haskell::Cabal

  desc "Nirum: IDL compiler and RPC/distributed object framework for microservices"
  homepage "https://nirum.org/"
  url "https://github.com/nirum-lang/nirum/archive/0.4.1.tar.gz"
  sha256 "ff4ad69d665cf8309f5fca8683ed54a912d45794b56615afe1e02c8166def222"
  head "https://github.com/nirum-lang/nirum.git"

  depends_on "ghc" => :build
  depends_on "haskell-stack" => :build

  def install
    system "stack build"
    system "stack install"
  end
end
