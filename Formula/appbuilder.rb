# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appbuilder < Formula
  desc "Choria Application Builder"
  homepage "https://github.com/choria-io/appbuilder"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.0.6/appbuilder-0.0.6-darwin-arm64.tar.gz"
      sha256 "32b305c636947a16fe424e1776a50713335edccebf1e1f8aec757cebc488c7c3"

      def install
        bin.install "appbuilder"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.0.6/appbuilder-0.0.6-darwin-amd64.tar.gz"
      sha256 "54892fe63eb814dbca04959691bb273fc1d8b1e0e6a0ac99034966e04001ffc9"

      def install
        bin.install "appbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.0.6/appbuilder-0.0.6-linux-arm6.tar.gz"
      sha256 "5679cef389bf7c7b2b33572fbab08b4df41b72dce7a449997f5e0cab68242a4b"

      def install
        bin.install "appbuilder"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.0.6/appbuilder-0.0.6-linux-arm64.tar.gz"
      sha256 "233ddde4d3efb07c6499a711a4321949b05b14bbc480625c90ffa6eec53b2996"

      def install
        bin.install "appbuilder"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.0.6/appbuilder-0.0.6-linux-amd64.tar.gz"
      sha256 "93c1f4cc5ddc282117e7aec2dada58e47412085dcf8e334ee7a5e78dde19b2dd"

      def install
        bin.install "appbuilder"
      end
    end
  end

  test do
    system "#{bin}/appbuilder --version"
  end
end
