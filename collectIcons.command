# Initializing script

cd "$(dirname "$0")"
version=`sw_vers -productVersion`
if [[ $1 ]]; then
{
    target=$1
}
else {
    target=~/Desktop/Collected
}
fi
mkdir -p "$target"
cd "$target"
mkdir -p "Applications"
mkdir -p "Drives"
mkdir -p "Folders"
mkdir -p "Misc"
mkdir -p "Other/CoreTypes"
mkdir -p "Other/Dock"

# Drives icons

echo "Copying drives icons..."
echo " "
echo "Copying File Server icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/GenericFileServerIcon.icns Drives/ # File Server icon
echo "Copying Time Machine icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/GenericTimeMachineDiskIcon.icns Drives/ # Time Machine icon
echo "Copying Internal drive icon..."
cp /System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/Internal.icns Drives/ # Internal Drive icon
echo "Copying Removable drive icon..."
cp /System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/Removable.icns Drives/ # Removable drive icon
echo "Copying External drive icon..."
cp /System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/External.icns Drives/ # External drive icon

echo " "

# Folders icons

echo "Copying folders icons..."
echo " "

echo "Copying Applications folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ApplicationsFolderIcon.icns Folders/ # Applications Folder icon
echo "Copying Burnable folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/BurnableFolderIcon.icns Folders/ # Burnable Folder icon
echo "Copying Desktop folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/DesktopFolderIcon.icns Folders/ # Desktop Folder icon
echo "Copying Developer folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/DeveloperFolderIcon.icns Folders/ # Developer Folder icon
echo "Copying Documents folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/DocumentsFolderIcon.icns Folders/ # Documents Folder icon
echo "Copying Downloads folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/DownloadsFolder.icns Folders/ # Downloads Folder icon
echo "Copying Generic folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/GenericFolderIcon.icns Folders/ # Generic Folder icon
echo "Copying Home folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/HomeFolderIcon.icns Folders/ # Home Folder icon
echo "Copying Library folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/LibraryFolderIcon.icns Folders/ # Library Folder icon
echo "Copying Movies folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/MovieFolderIcon.icns Folders/ # Movies Folder icon
echo "Copying Music folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/MusicFolderIcon.icns Folders/ # Music Folder icon
echo "Copying Pictures folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/PicturesFolderIcon.icns Folders/ # Pictures Folder icon
echo "Copying Sites folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/SitesFolderIcon.icns Folders/ # Sites Folder icon
echo "Copying Smart folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/SmartFolderIcon.icns Folders/ # Smart Folder icon
echo "Copying System folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/SystemFolderIcon.icns Folders/ # System Folder icon
echo "Copying Users folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/UsersFolderIcon.icns Folders/ # Users Folder icon
echo "Copying Utilities folder icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/UtilitiesFolder.icns Folders/ # Utilities Folder icon

echo " "

# Other icons

echo "Copying Other icons..."
echo " "
echo "Copying Generic Document icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/GenericDocumentIcon.icns Misc/ # Generic Document icon
echo "Copying Generic Application icon..."
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/GenericApplicationIcon.icns Applications/ # Generic Application icon

echo " "

# Applications Icons

echo "Copying Applications icons..."
echo " "
echo "Copying App Store icon..."
cp /System/Applications/App\ Store.app/Contents/Resources/AppIcon.icns Applications/App\ Store.icns
echo "Copying Automator icon..."
cp /System/Applications/Automator.app/Contents/Resources/Automator.icns Applications/Automator.icns
echo "Copying Books icon..."
cp /System/Applications/Books.app/Contents/Resources/iBooksAppIcon.icns Applications/Books.icns
echo "Copying Calculator icon..."
cp /System/Applications/Calculator.app/Contents/Resources/AppIcon.icns Applications/Calculator.icns
echo "Copying Calendar icon... No, we're not copying that."
cp /System/Applications/Calendar.app/Contents/Resources/App.icns Applications/Calendar.icns
cp /System/Applications/Calendar.app/Contents/Resources/App-empty.icns Applications/Calendar-empty.icns
cp /System/Applications/Calendar.app/Contents/Resources/Calendar.docktileplugin/Contents/Resources/App-empty.icns Applications/Calendar-empty.icns
echo "Copying Chess icon..."
cp /System/Applications/Chess.app/Contents/Resources/Chess.icns Applications/
echo "Copying Contacts icon..."
cp /System/Applications/Contacts.app/Contents/Resources/Contacts.icns Applications/
echo "Copying Dictionnary icon..."
cp /System/Applications/Dictionary.app/Contents/Resources/Dictionary.icns Applications/
echo "Copying FaceTime icon..."
cp /System/Applications/FaceTime.app/Contents/Resources/AppIcon.icns Applications/FaceTime.icns
echo "Copying FindMy icon..."
cp /System/Applications/FindMy.app/Contents/Resources/AppIcon.icns Applications/FindMy.icns
echo "Copying Font Book icon..."
cp /System/Applications/Font\ Book.app/Contents/Resources/AppIcon.icns Applications/Font\ Book.icns
echo "Copying Home icon..."
cp /System/Applications/Home.app/Contents/Resources/AppIcon-mac.icns Applications/Home.icns
echo "Copying Image Capture icon..."
cp /System/Applications/Image\ Capture.app/Contents/Resources/ImageCapture.icns Applications/Image\ Capture.icns
echo "Copying Launchpad icon..."
cp /System/Applications/Launchpad.app/Contents/Resources/Launchpad.icns Applications/
echo "Copying Mail icon..."
cp /System/Applications/Mail.app/Contents/Resources/ApplicationIcon.icns Applications/Mail.icns
echo "Copying Maps icon..."
cp /System/Applications/Maps.app/Contents/Resources/Maps.icns Applications/Maps.icns
echo "Copying Messages icon..."
cp /System/Applications/Messages.app/Contents/Resources/MessagesAppIcon.icns Applications/Messages.icns
echo "Copying Mission Control icon..."
cp /System/Applications/Mission\ Control.app/Contents/Resources/Expose.icns Applications/Mission\ Control.icns
echo "Copying Music icon..."
cp /System/Applications/Music.app/Contents/Resources/AppIcon.icns Applications/Music.icns
echo "Copying News icon..."
cp /System/Applications/News.app/Contents/Resources/AppIcon.icns Applications/News.icns
echo "Copying Notes icon..."
cp /System/Applications/Notes.app/Contents/Resources/AppIcon.icns Applications/Notes.icns
echo "Copying Photo Booth icon..."
cp /System/Applications/Photo\ Booth.app/Contents/Resources/PhotoBoothIcon.icns Applications/Photo\ Booth.icns
echo "Copying Photos icon..."
cp /System/Applications/Photos.app/Contents/Resources/AppIcon.icns Applications/Photos.icns
echo "Copying Podcasts icon..."
cp /System/Applications/Podcasts.app/Contents/Resources/AppIcon.icns Applications/Podcasts.icns
echo "Copying Preview icon..."
cp /System/Applications/Preview.app/Contents/Resources/Preview.icns Applications/Preview.icns
echo "Copying QuickTime Player icon..."
cp /System/Applications/QuickTime\ Player.app/Contents/Resources/QuickTimePlayerX.icns Applications/QuickTime\ Player.icns
echo "Copying Reminders icon..."
cp /System/Applications/Reminders.app/Contents/Resources/AppIcon.icns Applications/Reminders.icns
echo "Copying Siri icon..."
cp /System/Applications/Siri.app/Contents/Resources/Siri.icns Applications/Siri.icns
echo "Copying Stickies icon..."
cp /System/Applications/Stickies.app/Contents/Resources/AppIcon.icns Applications/Stickies.icns
echo "Copying Stocks icon..."
cp /System/Applications/Stocks.app/Contents/Resources/AppIcon_macOS.icns Applications/Stocks.icns
echo "Copying System Preferences icon..."
cp /System/Applications/System\ Preferences.app/Contents/Resources/PrefApp.icns Applications/System\ Preferences.icns
echo "Copying TV icon..."
cp /System/Applications/TV.app/Contents/Resources/AppIcon.icns Applications/TV.icns
echo "Copying TextEdit icon..."
cp /System/Applications/TextEdit.app/Contents/Resources/Edit.icns Applications/TextEdit.icns
echo "Copying Time Machine icon..."
cp /System/Applications/Time\ Machine.app/Contents/Resources/backup.icns Applications/Time\ Machine.icns
echo "Copying Voice Memos icon..."
cp /System/Applications/VoiceMemos.app/Contents/Resources/MacAppIcon.icns Applications/VoiceMemos.icns
echo "Copying Activity Monitor icon..."
cp /System/Applications/Utilities/Activity\ Monitor.app/Contents/Resources/AppIcon.icns Applications/Activity\ Monitor.icns
echo "Copying AirPort Utility icon..."
cp /System/Applications/Utilities/AirPort\ Utility.app/Contents/Resources/AirPortUtility.icns Applications/AirPort\ Utility.icns
echo "Copying Audio MIDI Setup icon..."
cp /System/Applications/Utilities/Audio\ MIDI\ Setup.app/Contents/Resources/AudioMIDISetup.icns Applications/Audio\ MIDI\ Setup.icns
echo "Copying Bluetooth File Exchange icon..."
cp /System/Applications/Utilities/Bluetooth\ File\ Exchange.app/Contents/Resources/BluetoothFileExchange.icns Applications/Bluetooth\ File\ Exchange.icns
echo "Copying Boot Camp Assistant icon..."
cp /System/Applications/Utilities/Boot\ Camp\ Assistant.app/Contents/Resources/DA.icns Applications/Boot\ Camp\ Assistant.icns
echo "Copying ColorSync Utility icon..."
cp /System/Applications/Utilities/ColorSync\ Utility.app/Contents/Resources/ColorSyncUtility.icns Applications/ColorSync\ Utility.icns
echo "Copying Console icon..."
cp /System/Applications/Utilities/Console.app/Contents/Resources/AppIcon.icns Applications/Console.icns
echo "Copying Digital Color Meter icon..."
cp /System/Applications/Utilities/Digital\ Color\ Meter.app/Contents/Resources/AppIcons.icns Applications/Digital\ Color\ Meter.icns
echo "Copying Disk Utility icon..."
cp /System/Applications/Utilities/Disk\ Utility.app/Contents/Resources/AppIcon.icns Applications/Disk\ Utility.icns
echo "Copying Grapher icon..."
cp /System/Applications/Utilities/Grapher.app/Contents/Resources/Grapher.icns Applications/Grapher.icns
echo "Copying Keychain Access icon..."
cp /System/Applications/Utilities/Keychain\ Access.app/Contents/Resources/AppIcon.icns Applications/Keychain\ Access.icns
echo "Copying Migration Assistant icon..."
cp /System/Applications/Utilities/Migration\ Assistant.app/Contents/Resources/MigrateAsst.icns Applications/Migration\ Assistant.icns
echo "Copying Screenshot icon..."
cp /System/Applications/Utilities/Screenshot.app/Contents/Resources/AppIcon.icns Applications/Screenshot.icns
echo "Copying Script Editor icon..."
cp /System/Applications/Utilities/Script\ Editor.app/Contents/Resources/SEScriptEditorX.icns Applications/Script\ Editor.icns
echo "Copying System Information icon..."
cp /System/Applications/Utilities/System\ Information.app/Contents/Resources/ASP.icns Applications/System\ Profiler.icns
echo "Copying Terminal icon..."
cp /System/Applications/Utilities/Terminal.app/Contents/Resources/Terminal.icns Applications/Terminal.icns
echo "Copying VoiceOver Utility icon..."
cp /System/Applications/Utilities/VoiceOver\ Utility.app/Contents/Resources/voiceover.icns Applications/VoiceOver\ Utility.icns
echo "Copying Safari icon..."
cp /Applications/Safari.app/Contents/Resources/AppIcon.icns Applications/Safari.icns
echo "Copying Finder icon..."
cp /System/Library/CoreServices/Finder.app/Contents/Resources/Finder.icns Applications/
cp /System/Library/CoreServices/Dock.app/Contents/Resources/finder.png Other/Dock/
cp /System/Library/CoreServices/Dock.app/Contents/Resources/finder@2x.png Other/Dock/
cp /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/FinderIcon.icns Other/CoreTypes/
echo "Copying About This Mac icon..."
cp /System/Library/CoreServices/Applications/About\ This\ Mac.app/Contents/Resources/AppIcon.icns Applications/System\ Profiler.icns
echo "Copying Archive Utility icon..."
cp /System/Library/CoreServices/Applications/Archive\ Utility.app/Contents/Resources/ArchiveUtility.icns Applications/Archive\ Utility.icns
echo "Copying DVD Player icon..."
cp /System/Library/CoreServices/Applications/DVD\ Player.app/Contents/Resources/AppIcon.icns Applications/DVD\ Player.icns
echo "Copying Directory Utility icon..."
cp /System/Library/CoreServices/Applications/Directory\ Utility.app/Contents/Resources/DirectoryUtility.icns Applications/Directory\ Utility.icns
echo "Copying Feedback Assistant icon..."
cp /System/Library/CoreServices/Applications/Feedback\ Assistant.app/Contents/Resources/AppIcon.icns Applications/Feedback\ Assistant.icns
echo "Copying Folder Actions Setup icon..."
cp /System/Library/CoreServices/Applications/Folder\ Actions\ Setup.app/Contents/Resources/Folder\ Actions\ Setup.icns Applications/Folder\ Actions\ Setup.icns
echo "Copying Screen Sharing icon..."
cp /System/Library/CoreServices/Applications/Screen\ Sharing.app/Contents/Resources/AppIcon.icns Applications/Screen\ Sharing.icns
echo "Copying Storage Management icon..."
cp /System/Library/CoreServices/Applications/Storage\ Management.app/Contents/Resources/AppIcon.icns Applications/System\ Profiler.icns
echo "Copying Ticket Viewer icon..."
cp /System/Library/CoreServices/Applications/Ticket\ Viewer.app/Contents/Resources/TicketViewer.icns Applications/Ticket\ Viewer.icns
echo "Copying Wireless Diagnostics icon..."
cp /System/Library/CoreServices/Applications/Wireless\ Diagnostics.app/Contents/Resources/WirelessDiagnostics.icns Applications/Wireless\ Diagnostics.icns

echo "Backing up Calendar docktile worker..."
cp /System/Applications/Calendar.app/Contents/Resources/Calendar.docktileplugin/Contents/MacOS/Calendar Misc

echo " "
echo "Done!"
