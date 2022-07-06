# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appbuilder < Formula
  desc "Choria Application Builder"
  homepage "https://github.com/choria-io/appbuilder"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.2.0/appbuilder-0.2.0-darwin-arm64.tar.gz"
      sha256 "6e43f8bdbbf82723d2d44ea1c026976de3efd6cd254ef09d9ab8c20ca19667e6"

      def install
        bin.install "appbuilder"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.2.0/appbuilder-0.2.0-darwin-amd64.tar.gz"
      sha256 "98c03da5c191f1644b5642c3f2901583031d7e0158feef5953c29261fcf91d0c"

      def install
        bin.install "appbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.2.0/appbuilder-0.2.0-linux-arm6.tar.gz"
      sha256 "34df7d457429a6b6895864a1e9f08d1658a768fb63b0853a36165b78bd4d15f8"

      def install
        bin.install "appbuilder"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.2.0/appbuilder-0.2.0-linux-arm64.tar.gz"
      sha256 "921dd52e4e060cf2a64a84457f143df703c697560cef511573259df7596128c1"

      def install
        bin.install "appbuilder"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.2.0/appbuilder-0.2.0-linux-amd64.tar.gz"
      sha256 "d4973d0764db7923573ae2090f6551302902cc0915f2f2c8600c8d81d41b547b"

      def install
        bin.install "appbuilder"
      end
    end
  end

  test do
    system "#{bin}/appbuilder --version"
  end
end
