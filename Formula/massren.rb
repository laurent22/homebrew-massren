require "formula"

class HomebrewMassren < Formula
  homepage "https://github.com/laurent22/massren"
  url "https://github.com/laurent22/massren/archive/v1.2.0.tar.gz"
  sha1 "eba08f70796841efaa302c2325890d5a44eecbe0"
  
  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', 'github.com/jessevdk/go-flags'
    system 'go', 'get', 'github.com/kr/text'
    system 'go', 'get', 'github.com/laurent22/go-sqlkv'
    system 'go', 'get', 'github.com/laurent22/go-trash'
    system 'go', 'get', 'github.com/mattn/go-sqlite3'
    system 'go', 'build', '-o', 'massren'
    bin.install 'massren'
  end
end
