# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appbuilder < Formula
  desc "Choria Application Builder"
  homepage "https://github.com/choria-io/appbuilder"
  version "0.7.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.7.3/appbuilder-0.7.3-darwin-arm64.tar.gz"
      sha256 "6902ea8f6c273154d4fadf77542a67d6cd5c210df4aec96c55df241d50039628"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.7.3/appbuilder-0.7.3-darwin-amd64.tar.gz"
      sha256 "cb0770377d9c4b48b66628905210e3df3748a60ae36c4b358f50c2a197ac8f8a"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.7.3/appbuilder-0.7.3-linux-arm6.tar.gz"
      sha256 "95d0ed1334a4039cfa43b9781f61068d879443030e74896fb1d23800eaee8b19"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.7.3/appbuilder-0.7.3-linux-arm64.tar.gz"
      sha256 "c3b7818e3a4f84dd008a29572c3b8aa37f65f479ffe744f5c29d03254ce49474"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.7.3/appbuilder-0.7.3-linux-amd64.tar.gz"
      sha256 "621a3683c190bd46f282cb43eca6db15d25497de46e9cb41d78cec5556ccbcab"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
  end

  test do
    system "#{bin}/appbuilder --version"
  end
end
