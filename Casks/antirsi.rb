cask 'antirsi' do
  version '2.1'
  sha256 'f2fc074959d65a11ed7302e1759f08342e0bb6472ce763af9aeec6703592e16f'

  url 'http://antirsi.onnlucky.com/AntiRSI-2.1.zip'
  name 'AntiRSI'
  homepage 'http://antirsi.onnlucky.com/'

  app 'AntiRSI.app'

  caveats do
    <<~EOS
      The new version of AntiRSI is available on the Mac App Store:
        http://itunes.apple.com/us/app/antirsi/id442007571?mt=12

      This is the old version released under the GPL license.
      The binary is still available for downloadi from the homepage.
      The source code is available on GitHub:
          https://github.com/onnlucky/antirsi
    EOS
  end
end
