class Mdefaults < Formula
  desc ""
  homepage ""
  url "https://github.com/fumiya-kume/mdefaults/releases/download/v0.0.47/mdefaults-amd64-v0.0.47.zip"
  sha256 "2781d96c9efde569901c0f99d7395759397e4d20b4767685be31fe49147afa48"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mdefaults`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
