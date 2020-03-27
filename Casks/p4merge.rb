cask 'p4merge' do
  version '19.2,1904275'
  sha256 '3be134b634129ad24af30759d3fbb55f55abef5b3f56d48acce14e0b244f8cca'

  url "https://cdist2.perforce.com/perforce/r#{version.before_comma}/bin.macosx1013x86_64/P4V.dmg"
  appcast 'https://cdist2.perforce.com/perforce/'
  name 'P4Merge'
  homepage 'https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v'

  app 'p4merge.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  p4_wrapper = "#{staged_path}/p4.wrapper.sh"
  binary p4_wrapper, target: 'p4merge'

  preflight do
    IO.write p4_wrapper, <<~EOS
      #!/bin/bash
      set -euo pipefail
      COMMAND=$(basename "$0")
      exec "#{appdir}/${COMMAND}.app/Contents/MacOS/${COMMAND}" "$@" 2> /dev/null
    EOS
  end

  zap trash: [
               '~/Library/Preferences/com.perforce.p4v',
               '~/Library/Preferences/com.perforce.p4v.plist',
               '~/Library/Saved Application State/com.perforce.p4v.savedState',
             ]
end
