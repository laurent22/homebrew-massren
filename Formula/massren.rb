require "formula"

class Massren < Formula
  homepage "https://github.com/laurent22/massren"
  url "https://github.com/laurent22/massren/archive/v1.3.0.tar.gz"
  sha1 "175c274570c0c6061f6d2371ab1f32941e113d0f"
  version "1.3.0"
  
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
