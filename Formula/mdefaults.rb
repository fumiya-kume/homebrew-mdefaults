class Mdefaults < Formula
  desc "macOS configuration management tool like HomeBrew Bundle"
  homepage "https://github.com/fumiya-kume/mdefaults"

  sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"
  license "MIT"
  head "https://github.com/fumiya-kume/mdefaults.git", branch: "master"

  depends_on "go" => :build

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fumiya-kume/mdefaults/releases/download/v0.0.47/mdefaults-arm64-v0.0.47.zip"
      sha256 "411f29d5ed02a40a4b2a9960edca644814410fdaa54427be887b9b0ec28c1711"

      def install
        bin.install "mdefaults"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fumiya-kume/mdefaults/releases/download/v0.0.47/mdefaults-amd64-v0.0.47.zip"
      sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"

      def install
        bin.install "mdefaults"
      end
    end
    def install
      bin.install "mdefaults"
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
