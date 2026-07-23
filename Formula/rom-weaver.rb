class RomWeaver < Formula
  desc "Local-first toolkit for ROMs and disc images: inspect, extract, compress, and apply, create, or bundle patches. Offline via a browser service-worker PWA or CLI."
  homepage "https://rom-weaver.com"
  version "0.7.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.1/rom-weaver-darwin-arm64"
      sha256 "a36978eb3299d65a3a2d233f49638e205758c449d8831876f40c8537e25cca59"
    end
    on_intel do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.1/rom-weaver-darwin-x64"
      sha256 "6dd42deadf47a90db80613b9e54774adc10083d686d5a2652462116e1de585a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.1/rom-weaver-linux-arm64-musl"
      sha256 "4a392fa66661800f5f8ac426a11c53cf6b231c0530be93e99b837aa494311051"
    end
    on_intel do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.1/rom-weaver-linux-x64-gnu"
      sha256 "58a132aa8b8c441e22e3534ccaf3df9a7fa3134849c073b01492f14546bcda69"
    end
  end

  def install
    bin.install Dir["rom-weaver-*"].first => "rom-weaver"
  end

  test do
    system bin/"rom-weaver", "--version"
  end
end
