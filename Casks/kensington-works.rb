cask "kensington-works" do
  version "2.2.7"
  sha256 "6d2e06d779bd9a401ec2e5b81d603833907209198fbb308b029846ce6de1f03d"

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
