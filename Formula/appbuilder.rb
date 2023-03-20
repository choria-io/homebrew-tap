# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Appbuilder < Formula
  desc "Choria Application Builder"
  homepage "https://github.com/choria-io/appbuilder"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.6.3/appbuilder-0.6.3-darwin-arm64.tar.gz"
      sha256 "4a7e0992e710644cfa3e6e20ab692d7070bcbdca2209062506c0c79c8b249e95"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.6.3/appbuilder-0.6.3-darwin-amd64.tar.gz"
      sha256 "978cf6c855322499c6d64db4a17ce55bbd919f34f1a4c478efedbf78689e69c6"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.6.3/appbuilder-0.6.3-linux-arm6.tar.gz"
      sha256 "6050f57bac6e31e7a1dbbf0180f32eac8f84b3b0ba488a2a3d921a6c39b76068"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.6.3/appbuilder-0.6.3-linux-arm64.tar.gz"
      sha256 "1ef2c83d61e886414d96b1d9c40a7d97b77ad20e89e4e0469fb6e2ab27ad0c44"

      def install
        bin.install "appbuilder"
        bin.install_symlink "appbuilder" => "abt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/choria-io/appbuilder/releases/download/v0.6.3/appbuilder-0.6.3-linux-amd64.tar.gz"
      sha256 "d18ff29f82faecd0a96bd293a813ee3341a9442b6d9289df428a74ac38cbd84c"

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
