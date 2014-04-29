require "formula"

class Massren < Formula
  homepage "https://github.com/laurent22/massren"
  url "https://github.com/laurent22/massren/archive/v1.2.1b.tar.gz"
  sha1 "8b5939841014c79be51b8e6be40f7f14e94895fa"
  
  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-u', 'github.com/jessevdk/go-flags'
    system 'go', 'get', '-u', 'github.com/kr/text'
    system 'go', 'get', '-u', 'github.com/laurent22/go-sqlkv'
    system 'go', 'get', '-u', 'github.com/laurent22/go-trash'
    system 'go', 'get', '-u', 'github.com/mattn/go-sqlite3'
    system 'go', 'build', '-o', 'massren'
    bin.install 'massren'
  end
end
