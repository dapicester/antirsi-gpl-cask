cask 'amule' do
  version '2.3.2'
  sha256 '3a9bd989dc06af886985ad7265e6e169a5fc6f121ddf822394beaa507f1ef0df'

  url 'https://www.dropbox.com/s/z7im8z4ns0ovnr1/aMule-2.3.2-macOS_10.14-wxWidgets-3.0.4.zip?raw=1'
  name 'aMule'
  homepage 'http://www.amule.org/'

  app 'aMule.app'

  postflight do
    system_command '/usr/bin/defaults',
                   args: %w(
                     write
                     org.amule.aMule
                     NSRequiresAquaSystemAppearance
                     -bool
                     YES
                   )
  end

  uninstall_postflight do
    system_command '/usr/bin/defaults',
                   args: %w(
                     delete
                     org.amule.aMule
                  )
  end

  zap trash: [
    '~/Library/Application Support/aMule/Temp'
  ]
end
