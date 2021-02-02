class Rubber < Formula
  desc "Automated building of LaTeX documents"
  homepage "https://launchpad.net/rubber"
  url "https://launchpad.net/rubber/trunk/1.5.1/+download/rubber-1.5.1.tar.gz"
  version "1.5.1"
  sha256 "37a843dc36a8aa256f9a66de130a031a0406346e663e1c257e45fd0a6eae0d9d"
  depends_on "python3" => :build

  def install
    system "python3", "setup.py",
                      "build",
                      "--info=False",
                      "--html=False",
                      "--pdf=False",
                      "--txt=False",
                      "install",
                      "--root=#{prefix}",
                      "--mandir=#{man}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rubber --version")
  end
end
