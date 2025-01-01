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
      sha256 "452c79fd67c307a8d2449597a1a8b8f8b1d70264ce0e275fd43cc06fd284720f"

      def install
        bin.install "pixelfs"
        bash_completion.install "completions/bash_autocomplete" => "pixelfs"
        zsh_completion.install "completions/zsh_autocomplete" => "_pixelfs"
      end
    end
    on_arm do
      url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_darwin_arm64_1.0.0.tar.gz"
      sha256 "e47136cefb9aeb15f4ef1bc923a86f3d6361d66a11149eced0db062e93c6a01a"

      def install
        bin.install "pixelfs"
        bash_completion.install "completions/bash_autocomplete" => "pixelfs"
        zsh_completion.install "completions/zsh_autocomplete" => "_pixelfs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_amd64_1.0.0.tar.gz"
        sha256 "5df004e48727ffa9579e723ccfc3509b721ee8f629f2f4c407af6f9b19606dae"

        def install
          bin.install "pixelfs"
          bash_completion.install "completions/bash_autocomplete" => "pixelfs"
          zsh_completion.install "completions/zsh_autocomplete" => "_pixelfs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_armv7_1.0.0.tar.gz"
        sha256 "6086348c10bcd92cf806b523af4573ef0fde841a6b71f69f54457e909f7ce9f2"

        def install
          bin.install "pixelfs"
          bash_completion.install "completions/bash_autocomplete" => "pixelfs"
          zsh_completion.install "completions/zsh_autocomplete" => "_pixelfs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pixelfs/pixelfs/releases/download/v1.0.0/pixelfs_linux_arm64_1.0.0.tar.gz"
        sha256 "67343a0b963fe6382773102e9caf7c134efaee132a4093121763da3fdeac3814"

        def install
          bin.install "pixelfs"
          bash_completion.install "completions/bash_autocomplete" => "pixelfs"
          zsh_completion.install "completions/zsh_autocomplete" => "_pixelfs"
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
