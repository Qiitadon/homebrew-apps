# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qiitan < Formula
  desc "This is a sample app of github.com/Qiitadon/Qiitan-go. It simply prints 'Hello, Gopher!'."
  homepage "https://github.com/Qiitadon/Qiitan-go/"
  version "0.0.0-beta3"

  on_macos do
    url "https://github.com/Qiitadon/Qiitan-go/releases/download/v0.0.0-beta3/Qiitan-go_0.0.0-beta3_macOS_all.zip", :using => CurlDownloadStrategy
    sha256 "41eabcdfaf61cfaed65206bcc34403e441a7f99485139a70bbb86a26a06ac51e"

    def install
      bin.install "qiitan"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Qiitadon/Qiitan-go/releases/download/v0.0.0-beta3/Qiitan-go_0.0.0-beta3_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "453757e154c17aa0d06abd2af12e82c3839e174b41879b57d03ed49ba9e7b9e9"

      def install
        bin.install "qiitan"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Qiitadon/Qiitan-go/releases/download/v0.0.0-beta3/Qiitan-go_0.0.0-beta3_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "086a1943ee56168bf5747a30a1fcbd13136e03ae5b52512f943bdbfab1aa4f14"

      def install
        bin.install "qiitan"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Qiitadon/Qiitan-go/releases/download/v0.0.0-beta3/Qiitan-go_0.0.0-beta3_Linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "347cdc8c51a8044509edbe75f30dbcf7267bf79fb6fb55a8cd5d4fea54803335"

      def install
        bin.install "qiitan"
      end
    end
  end

  test do
    system "#{bin}/qiitan --version"
  end
end
