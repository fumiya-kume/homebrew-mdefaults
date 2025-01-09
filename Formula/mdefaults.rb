# frozen_string_literal: true

HOMEBREW_GITPULLS_VERSION="0.0.47"
HOMEBREW_GITPULLS_VERSION.freeze

class Mdefaults < Formula
  desc "macOS configuration management tool like HomeBrew Bundle"
  homepage "https://github.com/fumiya-kume/mdefaults"
  sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"
  license "MIT"
  head "https://github.com/fumiya-kume/mdefaults.git", branch: "master"

  bottle do
    root_url "https://github.com/fumiya-kume/homebrew-mdefaults/releases/download/mdefaults-0.0.47"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3229352445dfd23ddaf9c11f006447a97842151bcfe8473431ed160b276d3ec8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1ad2e9007b91e6aa871cc629dd78daaecc11acb2086ad851c53cdfb70079fb00"
    sha256 cellar: :any_skip_relocation, ventura:       "2f340daad818edbfe38476750423c74bc4fe6ad79d7b6677de7422641c28c4e1"
  end

  depends_on "go" => :build

  on_macos do
    def install
      system "go", "build", *std_go_args(ldflags: "-s -w"), "./mdefaults"
    end
  end

  on_linux do
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

  test do
    puts "test"
  end
end
