class RomWeaver < Formula
  desc "Local-first offline toolkit for ROMs and ROM hack patches"
  homepage "https://rom-weaver.com"
  version "0.6.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.6.7/rom-weaver-darwin-arm64"
      sha256 "f638651dd6e605e4f29aee6bb7867d0241e6ae236dced9cc15e7d27853d5777b"
    end
    on_intel do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.6.7/rom-weaver-darwin-x64"
      sha256 "ceed9284c4398d18c9525599235b723fba894790cd9b9f5d0de1ab6bc38c4d13"
    end
  end

  on_linux do
    depends_on arch: :x86_64
    on_intel do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.6.7/rom-weaver-linux-x64-gnu"
      sha256 "b985eeeb8a7b09cc6758c906f19be63a5686bf8db5581c313199baf70bb95f28"
    end
  end

  def install
    bin.install Dir["rom-weaver-*"].first => "rom-weaver"
  end

  test do
    system bin/"rom-weaver", "--version"
  end
end
