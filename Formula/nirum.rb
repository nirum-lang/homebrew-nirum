require "language/haskell"

class Nirum < Formula
  include Language::Haskell::Cabal

  desc "Nirum: IDL compiler and RPC/distributed object framework for microservices"
  homepage "https://nirum.org/"
  url "https://github.com/spoqa/nirum/archive/0.3.1.tar.gz"
  sha256 "1728fe222702b509895375b6b2f48f278dbb0af5ff6e0c2a8f5d9df9606177cc"
  head "https://github.com/spoqa/nirum.git"

  depends_on "ghc" => :build
  depends_on "haskell-stack" => :build

  def install
    system "stack build"
    system "stack install"
  end
end