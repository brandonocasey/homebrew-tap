class RomWeaver < Formula
  desc "Local-first toolkit for ROMs and disc images: inspect, extract, compress, and apply, create, or bundle patches. Offline via a browser service-worker PWA or CLI."
  homepage "https://rom-weaver.com"
  version "0.7.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.2/rom-weaver-darwin-arm64"
      sha256 "c469a915fc1c9bd026e66e37343cba546880e6cb371bc16b4bc0eff8f130d541"
    end
    on_intel do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.2/rom-weaver-darwin-x64"
      sha256 "0389e40e51da493f7d428cf6503320aed5e838a6bb2fa8d1f593139fc26c78ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.2/rom-weaver-linux-arm64-musl"
      sha256 "132d5e59bddac336a49ce5e213fcd4142040257e32bea2e43080a582631c5288"
    end
    on_intel do
      url "https://github.com/brandonocasey/rom-weaver/releases/download/v0.7.2/rom-weaver-linux-x64-gnu"
      sha256 "38c04476efa40e45382072292ecc765fb7e5134d8a7c3ba960e85cc4a2fc43e7"
    end
  end

  def install
    bin.install Dir["rom-weaver-*"].first => "rom-weaver"
  end

  test do
    system bin/"rom-weaver", "--version"
  end
end
