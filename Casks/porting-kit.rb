cask 'porting-kit' do
  version '3.0.42'
  sha256 'b19294cae0704dbb46492936936837a59937489b7c8c9b9dfbc188cbcb819c69'

  url "https://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'https://portingkit.com/kit/updatecast.xml'
  name 'Porting Kit'
  homepage 'https://portingkit.com/'

  auto_updates true
  conflicts_with cask: 'porting-kit-legacy'

  app 'Porting Kit.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl*',
               '~/Library/Application Support/Porting-Kit',
               '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
               '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies',
               '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
               '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
               '~/Library/WebKit/edu.ufrj.vitormm.Porting-Kit',
             ]
end
