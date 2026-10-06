#!/bin/zsh

#echo "Removing previous version."
rm -Rfv ~/Games/X-Plane-12/Resources/plugins/JoinFS-XP/mac_x64/JoinFS-XP.xpl
#echo "Copying new version into place."
cp -nav ~/Development/JoinFS/JoinFS-XP/build/Qt_6_12_0_for_macOS_Release/libJoinFS-XP.1.0.0.dylib ~/Games/X-Plane-12/Resources/plugins/JoinFS-XP/mac_x64/
#echo "Renaming to correct name."
mv -nv ~/Games/X-Plane-12/Resources/plugins/JoinFS-XP/mac_x64/libJoinFS-XP.1.0.0.dylib ~/Games/X-Plane-12/Resources/plugins/JoinFS-XP/mac_x64/JoinFS-XP.xpl
