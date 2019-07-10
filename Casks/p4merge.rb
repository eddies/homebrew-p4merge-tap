cask 'p4merge' do
  version '19.1-1815056'
  sha256 '50dd06481871afe6718f49b0ed6de8446af4a4f69ae9716775840e0b9251546a'

  url "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/P4V.dmg"
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
