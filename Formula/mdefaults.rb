class Mdefaults < Formula
  desc "macOS configuration management tool like HomeBrew Bundle"
  homepage "https://github.com/fumiya-kume/mdefaults"
  url "https://github.com/fumiya-kume/mdefaults/releases/download/v0.0.47/mdefaults-amd64-v0.0.47.zip"
  sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"
  license "MIT"
  head "https://github.com/fumiya-kume/mdefaults.git", branch: "master"

  depends_on "go" => :build

  on_macos do
    def install
      bin.install "mdefaults"
    end
  end

  on_linux do
    def install
      puts "Linux not supporting for now sorry..."
    end
  end

  test do
    system bin/"mdefaults pull"
  end
end
