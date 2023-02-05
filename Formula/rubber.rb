class Rubber < Formula
  desc "Automated building of LaTeX documents"
  homepage "https://launchpad.net/rubber"
  url "https://gitlab.com/latex-rubber/rubber/-/archive/1.6.0/rubber-1.6.0.tar.bz2"
  version "1.6.0"
  sha256 "59c3907245b6bf2adcc2451d1b150e3f5ed193fa80c65cf883ae4a8f443b7dc9"
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
