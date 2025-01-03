# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixelfs < Formula
  desc "A cross-device file system, Transfer files based on s3-protocol."
  homepage "https://github.com/pixelfs/pixelfs"
  version "1.0.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_darwin_amd64_1.0.0.tar.gz"
      sha256 "effc0abf5e5f219e38686ba177aee857fa7e122e4a3076cb71de986284008d2e"

      def install
        bin.install "pixelfs"
      end
    end
    on_arm do
      url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_darwin_arm64_1.0.0.tar.gz"
      sha256 "dbb4bed011bb7de1d06aaa7025e188f60967eb61419a98aebc2535804d3f0e1d"

      def install
        bin.install "pixelfs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_amd64_1.0.0.tar.gz"
        sha256 "d59aa1ec92c5215a37642878bb74220b44f20333157b0f3b572d906789a73bd5"

        def install
          bin.install "pixelfs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_armv7_1.0.0.tar.gz"
        sha256 "551177754b5aa0a9dc9cd7d60b3868f3453622189da93cd5958dd3f356fc0de0"

        def install
          bin.install "pixelfs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_arm64_1.0.0.tar.gz"
        sha256 "5f870f3356c3c4c1c151647a91473ea8a11dba3314865c54615ec1a213a5dbdb"

        def install
          bin.install "pixelfs"
        end
      end
    end
  end

  service do
    run [opt_bin/"pixelfs", "daemon"]
    keep_alive true
  end

  test do
    system "#{bin}/pixelfs version"
  end
end
