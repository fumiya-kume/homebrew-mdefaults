# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mdefaults < Formula
  desc "mdefaults is a tool to manage default values of macOS."
  homepage "https://github.com/fumiya-kume/mdefaults"
  version "1.0.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fumiya-kume/mdefaults/releases/download/v1.0.27/mdefaults_1.0.27_darwin_amd64.tar.gz"
      sha256 "89813b4d5db93419276067a88caeeef05e4d447971dd3c337c2c9b07e1ace81e"

      def install
        bin.install "mdefaults"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fumiya-kume/mdefaults/releases/download/v1.0.27/mdefaults_1.0.27_darwin_arm64.tar.gz"
      sha256 "41620b8a6e5075914e97ef6352d544c890f94e71b9d5dd2516fa089f1fc25519"

      def install
        bin.install "mdefaults"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fumiya-kume/mdefaults/releases/download/v1.0.27/mdefaults_1.0.27_linux_amd64.tar.gz"
        sha256 "2ea5d3968c3beefb940e148edf41969cf7db49e9f97af2e22c3fd3fbe25af245"

        def install
          bin.install "mdefaults"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fumiya-kume/mdefaults/releases/download/v1.0.27/mdefaults_1.0.27_linux_arm64.tar.gz"
        sha256 "da8f704eb1c7733a4b75bc8294c21c7766f04502d26bc718cc491ffd1447143a"

        def install
          bin.install "mdefaults"
        end
      end
    end
  end
end
