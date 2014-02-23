require "formula"

class Massren < Formula
  homepage "https://github.com/laurent22/massren"
  url "https://github.com/laurent22/massren/archive/v1.1.0.tar.gz"
  sha1 "a875caad59ee4aa55437eb55bc1bf35d703db9fd"
  
  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', 'github.com/jessevdk/go-flags'
    system 'go', 'get', 'github.com/kr/text'
    system 'go', 'get', 'github.com/laurent22/go-sqlkv'
    system 'go', 'get', 'github.com/mattn/go-sqlite3'
    system 'go', 'build', '-o', 'massren'
    bin.install 'massren'
  end
end
