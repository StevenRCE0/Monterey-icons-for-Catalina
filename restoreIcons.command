# Initializing script

cd "$(dirname "$0")"
version=`sw_vers -productVersion`

if [[ ! -e "./Backup" ]]; then
{
    echo "No backup found."
    exit
}
fi

exit

echo "You need to execute this script as root"

echo " "

# Remouting Root FS as writable if on Catalina

if [[ "$version" > "10.15" ]] || [[ "$version" == "10.15" ]]; then
    echo "It seems you are on macOS 10.15+"
    echo "SIP need to be disabled to continue"
    echo "Remouting system drive as writable (required on this macOS version)"
    sudo mount -uw /
fi

# Drives icons

echo "Copying drives icons..."
echo " "
echo "Copying File Server icon..."
sudo cp -f Backup/Drives/GenericFileServerIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # File Server icon
echo "Copying Time Machine icon..."
sudo cp -f Backup/Drives/GenericTimeMachineDiskIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Time Machine icon
echo "Copying Internal drive icon..."
sudo cp -f Backup/Drives/Internal.icns /System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/ # Internal Drive icon
echo "Copying Removable drive icon..."
sudo cp -f Backup/Drives/Removable.icns /System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/ # Removable drive icon
echo "Copying External drive icon..."
sudo cp -f Backup/Drives/External.icns /System/Library/Extensions/IOStorageFamily.kext/Contents/Resources/ # External drive icon

echo " "

# Folders icons

echo "Copying folders icons..."
echo " "

echo "Copying Applications folder icon..."
sudo cp -f Backup/Folders/ApplicationsFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Applications Folder icon
echo "Copying Burnable folder icon..."
sudo cp -f Backup/Folders/BurnableFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Burnable Folder icon
echo "Copying Desktop folder icon..."
sudo cp -f Backup/Folders/DesktopFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Desktop Folder icon
echo "Copying Developer folder icon..."
sudo cp -f Backup/Folders/DeveloperFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Developer Folder icon
echo "Copying Documents folder icon..."
sudo cp -f Backup/Folders/DocumentsFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Documents Folder icon
echo "Copying Downloads folder icon..."
sudo cp -f Backup/Folders/DownloadsFolder.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Downloads Folder icon
echo "Copying Generic folder icon..."
sudo cp -f Backup/Folders/GenericFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Generic Folder icon
echo "Copying Home folder icon..."
sudo cp -f Backup/Folders/HomeFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Home Folder icon
echo "Copying Library folder icon..."
sudo cp -f Backup/Folders/LibraryFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Library Folder icon
echo "Copying Movies folder icon..."
sudo cp -f Backup/Folders/MovieFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Movies Folder icon
echo "Copying Music folder icon..."
sudo cp -f Backup/Folders/MusicFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Music Folder icon
echo "Copying Pictures folder icon..."
sudo cp -f Backup/Folders/PicturesFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Pictures Folder icon
echo "Copying Sites folder icon..."
sudo cp -f Backup/Folders/SitesFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Sites Folder icon
echo "Copying Smart folder icon..."
sudo cp -f Backup/Folders/SmartFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Smart Folder icon
echo "Copying System folder icon..."
sudo cp -f Backup/Folders/SystemFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # System Folder icon
echo "Copying Users folder icon..."
sudo cp -f Backup/Folders/UsersFolderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Users Folder icon
echo "Copying Utilities folder icon..."
sudo cp -f Backup/Folders/UtilitiesFolder.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Utilities Folder icon

echo " "

# Other icons

echo "Copying Other icons..."
echo " "
echo "Copying Generic Document icon..."
sudo cp -f Backup/Misc/GenericDocumentIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Generic Document icon
echo "Copying Generic Application icon..."
sudo cp -f Backup/Applications/GenericApplicationIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ # Generic Application icon

echo " "

# Applications Icons

echo "Copying Applications icons..."
echo " "
echo "Applying App Store icon..."
sudo ./Scripts/fileicon set /System/Applications/App\ Store.app Backup/Applications/App\ Store.icns
echo "Applying Automator icon..."
sudo ./Scripts/fileicon set /System/Applications/Automator.app Backup/Applications/Automator.icns
echo "Applying Books icon..."
sudo ./Scripts/fileicon set /System/Applications/Books.app Backup/Applications/Books.icns
echo "Applying Calculator icon..."
sudo ./Scripts/fileicon set /System/Applications/Calculator.app Backup/Applications/Calculator.icns
echo "Applying Calendar icon..."
sudo ./Scripts/fileicon set /System/Applications/Calendar.app Backup/Applications/Calendar.icns
sudo cp -f Backup/Applications/Calendar.icns /System/Applications/Calendar.app/Contents/Resources/App.icns
sudo cp -f Backup/Applications/Calendar-empty.icns /System/Applications/Calendar.app/Contents/Resources/App-empty.icns
sudo cp -f Backup/Applications/Calendar-empty.icns /System/Applications/Calendar.app/Contents/Resources/Calendar.docktileplugin/Contents/Resources/App-empty.icns
echo "Applying Chess icon..."
sudo ./Scripts/fileicon set /System/Applications/Chess.app Backup/Applications/Chess.icns
echo "Applying Contacts icon..."
sudo ./Scripts/fileicon set /System/Applications/Contacts.app Backup/Applications/Contacts.icns
echo "Applying Dictionnary icon..."
sudo ./Scripts/fileicon set /System/Applications/Dictionary.app Backup/Applications/Dictionary.icns
echo "Applying FaceTime icon..."
sudo ./Scripts/fileicon set /System/Applications/FaceTime.app Backup/Applications/FaceTime.icns
echo "Applying FindMy icon..."
sudo ./Scripts/fileicon set /System/Applications/FindMy.app Backup/Applications/FindMy.icns
echo "Applying Font Book icon..."
sudo ./Scripts/fileicon set /System/Applications/Font\ Book.app Backup/Applications/Font\ Book.icns
echo "Applying Home icon..."
sudo ./Scripts/fileicon set /System/Applications/Home.app Backup/Applications/Home.icns
echo "Applying Image Capture icon..."
sudo ./Scripts/fileicon set /System/Applications/Image\ Capture.app Backup/Applications/Image\ Capture.icns
echo "Applying Launchpad icon..."
sudo ./Scripts/fileicon set /System/Applications/Launchpad.app Backup/Applications/Launchpad.icns
echo "Applying Mail icon..."
sudo ./Scripts/fileicon set /System/Applications/Mail.app Backup/Applications/Mail.icns
echo "Applying Maps icon..."
sudo ./Scripts/fileicon set /System/Applications/Maps.app Backup/Applications/Maps.icns
echo "Applying Messages icon..."
sudo ./Scripts/fileicon set /System/Applications/Messages.app Backup/Applications/Messages.icns
echo "Applying Mission Control icon..."
sudo ./Scripts/fileicon set /System/Applications/Mission\ Control.app Backup/Applications/Mission\ Control.icns
echo "Applying Music icon..."
sudo ./Scripts/fileicon set /System/Applications/Music.app Backup/Applications/Music.icns
echo "Applying News icon..."
sudo ./Scripts/fileicon set /System/Applications/News.app Backup/Applications/News.icns
echo "Applying Notes icon..."
sudo ./Scripts/fileicon set /System/Applications/Notes.app Backup/Applications/Notes.icns
echo "Applying Photo Booth icon..."
sudo ./Scripts/fileicon set /System/Applications/Photo\ Booth.app Backup/Applications/Photo\ Booth.icns
echo "Applying Photos icon..."
sudo ./Scripts/fileicon set /System/Applications/Photos.app Backup/Applications/Photos.icns
echo "Applying Podcasts icon..."
sudo ./Scripts/fileicon set /System/Applications/Podcasts.app Backup/Applications/Podcasts.icns
echo "Applying Preview icon..."
sudo ./Scripts/fileicon set /System/Applications/Preview.app Backup/Applications/Preview.icns
echo "Applying QuickTime Player icon..."
sudo ./Scripts/fileicon set /System/Applications/QuickTime\ Player.app Backup/Applications/QuickTime\ Player.icns
echo "Applying Reminders icon..."
sudo ./Scripts/fileicon set /System/Applications/Reminders.app Backup/Applications/Reminders.icns
echo "Applying Siri icon..."
sudo ./Scripts/fileicon set /System/Applications/Siri.app Backup/Applications/Siri.icns
echo "Applying Stickies icon..."
sudo ./Scripts/fileicon set /System/Applications/Stickies.app Backup/Applications/Stickies.icns
echo "Applying Stocks icon..."
sudo ./Scripts/fileicon set /System/Applications/Stocks.app Backup/Applications/Stocks.icns
echo "Applying System Preferences icon..."
sudo ./Scripts/fileicon set /System/Applications/System\ Preferences.app Backup/Applications/System\ Preferences.icns
echo "Applying TV icon..."
sudo ./Scripts/fileicon set /System/Applications/TV.app Backup/Applications/TV.icns
echo "Applying TextEdit icon..."
sudo ./Scripts/fileicon set /System/Applications/TextEdit.app Backup/Applications/TextEdit.icns
echo "Applying Time Machine icon..."
sudo ./Scripts/fileicon set /System/Applications/Time\ Machine.app Backup/Applications/Time\ Machine.icns
echo "Applying Voice Memos icon..."
sudo ./Scripts/fileicon set /System/Applications/VoiceMemos.app Backup/Applications/VoiceMemos.icns
echo "Applying Time Machine icon..."
sudo ./Scripts/fileicon set /System/Applications/Time\ Machine.app Backup/Applications/Time\ Machine.icns
echo "Applying Activity Monitor icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Activity\ Monitor.app Backup/Applications/Activity\ Monitor.icns
echo "Applying AirPort Utility icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/AirPort\ Utility.app Backup/Applications/AirPort\ Utility.icns
echo "Applying Audio MIDI Setup icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Audio\ MIDI\ Setup.app Backup/Applications/Audio\ MIDI\ Setup.icns
echo "Applying Bluetooth File Exchange icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Bluetooth\ File\ Exchange.app Backup/Applications/Bluetooth\ File\ Exchange.icns
echo "Applying Boot Camp Assistant icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Boot\ Camp\ Assistant.app Backup/Applications/Boot\ Camp\ Assistant.icns
echo "Applying ColorSync Utility icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/ColorSync\ Utility.app Backup/Applications/ColorSync\ Utility.icns
echo "Applying Console icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Console.app Backup/Applications/Console.icns
echo "Applying Digital Color Meter icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Digital\ Color\ Meter.app Backup/Applications/Digital\ Color\ Meter.icns
echo "Applying Disk Utility icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Disk\ Utility.app Backup/Applications/Disk\ Utility.icns
echo "Applying Grapher icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Grapher.app Backup/Applications/Grapher.icns
echo "Applying Keychain Access icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Keychain\ Access.app Backup/Applications/Keychain\ Access.icns
echo "Applying Migration Assistant icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Migration\ Assistant.app Backup/Applications/Migration\ Assistant.icns
echo "Applying Screenshot icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Screenshot.app Backup/Applications/Screenshot.icns
echo "Applying Script Editor icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Script\ Editor.app Backup/Applications/Script\ Editor.icns
echo "Applying System Information icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/System\ Information.app Backup/Applications/System\ Profiler.icns
echo "Applying Terminal icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/Terminal.app Backup/Applications/Terminal.icns
echo "Applying VoiceOver Utility icon..."
sudo ./Scripts/fileicon set /System/Applications/Utilities/VoiceOver\ Utility.app Backup/Applications/VoiceOver\ Utility.icns
echo "Applying Safari icon..."
sudo ./Scripts/fileicon set /Applications/Safari.app Backup/Applications/Safari.icns
echo "Applying Finder icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Finder.app Backup/Applications/Finder.icns
sudo cp -f Backup/Other/Dock/finder.png /System/Library/CoreServices/Dock.app/Contents/Resources/
sudo cp -f Backup/Other/Dock/finder@2x.png /System/Library/CoreServices/Dock.app/Contents/Resources/
sudo cp -f Backup/Other/CoreTypes/FinderIcon.icns /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/
echo "Applying About This Mac icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/About\ This\ Mac.app Backup/Applications/System\ Profiler.icns
echo "Applying Archive Utility icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Archive\ Utility.app Backup/Applications/Archive\ Utility.icns
echo "Applying DVD Player icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/DVD\ Player.app Backup/Applications/DVD\ Player.icns
echo "Applying Directory Utility icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Directory\ Utility.app Backup/Applications/Directory\ Utility.icns
echo "Applying Feedback Assistant icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Feedback\ Assistant.app Backup/Applications/Feedback\ Assistant.icns
echo "Applying Folder Actions Setup icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Folder\ Actions\ Setup.app Backup/Applications/Folder\ Actions\ Setup.icns
echo "Applying Screen Sharing icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Screen\ Sharing.app Backup/Applications/Screen\ Sharing.icns
echo "Applying Storage Management icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Storage\ Management.app Backup/Applications/System\ Profiler.icns
echo "Applying Ticket Viewer icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Ticket\ Viewer.app Backup/Applications/Ticket\ Viewer.icns
echo "Applying Wireless Diagnostics icon..."
sudo ./Scripts/fileicon set /System/Library/CoreServices/Applications/Wireless\ Diagnostics.app Backup/Applications/Wireless\ Diagnostics.icns

echo " "

# Clean icon cache

echo "Cleaning icon cache..."
sudo find /private/var/folders/ -name 'com.apple.dock.iconcache' -delete
sudo find /private/var/folders/ -name 'com.apple.iconservices' -delete
sudo rm -r /Library/Caches/com.apple.iconservices.store

echo " "

# Restart Finder and Dock

echo "Restarting Finder and Dock"
killall Finder
killall Dock

echo " "
echo "Done!"
