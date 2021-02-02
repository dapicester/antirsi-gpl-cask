cask "kensington-works" do
  version "2.2.6"
  sha256 "67bbc502623f780c03504613c334e78783ae7410788867a0e8df400a9b59d348"

  url "https://www.kensington.com/siteassets/software-support/kensingtonworks/new-kensingtonworks-download/kensingtonworks_#{version}.pkg"
  name "KensingtonWorks for MAC"
  desc "A tool for personalizing Kensington trackballs, mice and presenters."
  homepage "https://www.kensington.com/software/kensingtonworks/"

  pkg "kensingtonworks_#{version}.pkg"

  uninstall pkgutil: [
    "com.kensington.trackballworks2.installer"
  ], quit: [
    "com.kensington.kensingtonworks2.helper2"
  ]
end
