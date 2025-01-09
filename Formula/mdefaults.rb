class Mdefaults < Formula
  desc "macOS configuration management tool like HomeBrew Bundle"
  homepage "https://github.com/fumiya-kume/mdefaults"
  url "https://github.com/fumiya-kume/mdefaults/releases/download/v0.0.47/mdefaults-amd64-v0.0.47.zip"
  sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"
  license "GPL"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -o mdefaults")
    bin.install "mdefaults"
  end

  test do
    system "false"
  end
end
