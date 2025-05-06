class MetaEgg < Formula
    desc "Awesome Tools to Generate MetaEgg Framework"
    homepage "https://github.com/Jinglever/meta-egg"
    version "v3.4.6"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/Jinglever/meta-egg/releases/download/v3.4.6/meta-egg-darwin-arm64.tar.gz"
        sha256 "d59f33d590e9404f8fbbaf554d73886d1f86a45aa0ebcaf31e08a1f45536adbb"
      else
        url "https://github.com/Jinglever/meta-egg/releases/download/v3.4.6/meta-egg-darwin-amd64.tar.gz"
        sha256 "91e810cf07b2537ae7c54a5a0cf3be9ad8f7157dcde68134275fd89cc3535eeb"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/Jinglever/meta-egg/releases/download/v3.4.6/meta-egg-linux-arm64.tar.gz"
        sha256 "23eb6ded718a9b4171d7a6d88354abe9c91e4add04b567ab5f427d84c7881d84"
      else
        url "https://github.com/Jinglever/meta-egg/releases/download/v3.4.6/meta-egg-linux-amd64.tar.gz"
        sha256 "23fdcc1fb41f5dba5e6981855d6b50d05cbd7ad6abfadc864f9ac9cd05fa575a"
      end
    end
  
    def install
      bin.install "meta-egg"
    end
  
    test do
      system "#{bin}/meta-egg", "--version"
    end
  end