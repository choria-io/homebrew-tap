# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appbuilder < Formula
  desc "Choria Application Builder"
  homepage "https://github.com/choria-io/appbuilder"
  version "0.11.0"

  on_macos do
    on_intel do
      url "https://github.com/choria-io/appbuilder/releases/download/v0.11.0/appbuilder-0.11.0-darwin-amd64.tar.gz"
      sha256 "d329617d963a1790e1752acf817a31342d59866818d019d31956946f16bc40f0"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    on_arm do
      url "https://github.com/choria-io/appbuilder/releases/download/v0.11.0/appbuilder-0.11.0-darwin-arm64.tar.gz"
      sha256 "03aa206199ae3fed0ca089b2a62f80375d13aafc7bb09c2ac58ed60711dcebf3"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/choria-io/appbuilder/releases/download/v0.11.0/appbuilder-0.11.0-linux-amd64.tar.gz"
        sha256 "7f7d4e602d8ecd96a5412d20c8d62831e54a1e55fcda05f0be34e701a722e318"

        def install
          bin.install "appbuilder"
          bin.install_symlink "appbuilder" => "abt"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/choria-io/appbuilder/releases/download/v0.11.0/appbuilder-0.11.0-linux-arm6.tar.gz"
        sha256 "ba7c077404d0f419e4a9b7f29e7dc342e54fd1d4f11718716f6829d57e853339"

        def install
          bin.install "appbuilder"
          bin.install_symlink "appbuilder" => "abt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/choria-io/appbuilder/releases/download/v0.11.0/appbuilder-0.11.0-linux-arm64.tar.gz"
        sha256 "af51c8eb15aff1d03600d8a6c9c20453a3800379e9cfed3a0e8af60f237b607b"

        def install
          bin.install "appbuilder"
          bin.install_symlink "appbuilder" => "abt"
        end
      end
    end
  end

  test do
    system "#{bin}/appbuilder --version"
  end
end
