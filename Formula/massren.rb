require "formula"

class Massren < Formula
  homepage "https://github.com/laurent22/massren"
  url "https://github.com/laurent22/massren/archive/v1.4.0.tar.gz"
  sha1 "50dec8fa3cf949ce0f1380345b78ccfcbd0eac92"
  version "1.4.0"
  
  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', '-u', 'github.com/jessevdk/go-flags'
    system 'go', 'get', '-u', 'github.com/kr/text'
    system 'go', 'get', '-u', 'github.com/laurent22/go-sqlkv'
    system 'go', 'get', '-u', 'github.com/laurent22/go-trash'
    system 'go', 'get', '-u', 'github.com/mattn/go-sqlite3'
    system 'go', 'get', '-u', 'github.com/nu7hatch/gouuid'
    system 'go', 'build', '-o', 'massren'
    bin.install 'massren'
  end
end
