# frozen_string_literal: true

HOMEBREW_GITPULLS_VERSION="0.047"
HOMEBREW_GITPULLS_VERSION.freeze

class Mdefaults < Formula
  desc "macOS configuration management tool like HomeBrew Bundle"
  homepage "https://github.com/fumiya-kume/mdefaults"
  sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"
  license "MIT"
  head "https://github.com/fumiya-kume/mdefaults.git", branch: "master"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fumiya-kume/mdefaults/releases/download/v#{HOMEBREW_GITPULLS_VERSION}/mdefaults-arm64-v#{HOMEBREW_GITPULLS_VERSION}.zip"
      sha256 "279d2b09486a511173912d903e4fd4ec86a3d64742fde5bb5f2a38063b7bb9d4"

      def install
        bin.install "mdefaults"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fumiya-kume/mdefaults/releases/download/v#{HOMEBREW_GITPULLS_VERSION}/mdefaults-amd64-v#{HOMEBREW_GITPULLS_VERSION}.zip"
      sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"

      def install
        bin.install "mdefaults"
      end
    end
  end

  on_linux do
    def install
      bin.install "mdefaults"
    end
  end

  test do
    puts "test"
  end
end
