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
      sha256 "4c3e32a5f11257aab0018bba977a6de562d4f8cc70debc0aa610d9da83659d52"

      def install
        bin.install "pixelfs"
      end
    end
    on_arm do
      url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_darwin_arm64_1.0.0.tar.gz"
      sha256 "81b40d08b5df85b3d4faa0f837c1e5e66fbd51603060a3247a59758631fb306e"

      def install
        bin.install "pixelfs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_amd64_1.0.0.tar.gz"
        sha256 "2c6fba6d98b8a06bf8618356fee85c405bb16eef86569f4c1391ad1ed9ef4928"

        def install
          bin.install "pixelfs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_armv7_1.0.0.tar.gz"
        sha256 "9fa743cc31424719c264f81857c538222b1f933d065d6222948073bf3f804290"

        def install
          bin.install "pixelfs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_arm64_1.0.0.tar.gz"
        sha256 "e48908c90b2ef9e891f6447c4fb72a3d3bbb3b37b7ac58bfc3bdf46c8674bba8"

        def install
          bin.install "pixelfs"
        end
      end
    end
  end

  service do
    run [opt_bin/"pixelfs", "daemon"]
    keep_alive true
    environment_variables PATH: std_service_path_env
  end

  test do
    system "#{bin}/pixelfs version"
  end
end
