<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-deviceUniqueIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A unique device identifier. It's guaranteed to be unique for every device (Read Only).

**iOS**: Uses [UIDevice.identifierForVendor](https://developer.apple.com/documentation/uikit/uidevice/1620059-identifierforvendor) to generate a unique device identifier.

 **macOS**: Uses [kIOPlatformUUIDKey](https://developer.apple.com/documentation/iokit/kioplatformuuidkey) to generate a unique device identifier.

**Android:** `SystemInfo.deviceUniqueIdentifier` always returns the MD5 hash of ANDROID_ID.

**Note:** Android 8.0 (API level 26) `ANDROID_ID` depends on the app signing key. The unsigned builds that are by default signed with a debug keystore typically have a different value than signed builds signed with a key provided in the Player settings. In addtion, when allowing [Google Play to sign your app](https://developer.android.com/studio/publish/app-signing#app-signing-google-play), this value will be different depending on whether the built app is built locally (signed with the upload key) or downloaded from the Google Play (signed with the final key).

**Linux Standalone**: Reads the unique device identifier value from:

- /etc/machine-id
- /var/lib/dbus/machine-id

If both files are present, the value from `/var/lib/dbus/machine-id` is used.

 **Note:** Both files contain the same unique ID. Unity reads `/etc/machine-id` location as a fallback, if a linux distribution doesn't have dbus installed, that is, `/var/lib/dbus/machine-id` path isn't available.

**Windows Store Apps**: Uses `AdvertisingManager::AdvertisingId` for returning unique device identifier. If this option in **PC Settings** > **Privacy** > **Let apps use my advertising ID for experiences across apps** is disabled, Unity will fall back to `HardwareIdentification::GetPackageSpecificToken().Id`. **Note:** Turning this setting off will reset your ID.

**Windows Standalone**: Returns a hash from the concatenation of strings taken from the following [Computer System Hardware Classes](https://msdn.microsoft.com/en-us/library/windows/desktop/aa389273(v=vs.85).aspx):

- Win32_BaseBoard::SerialNumber
- Win32_BIOS::SerialNumber
- Win32_OperatingSystem::SerialNumber

Platforms that don't support this property, Unity will return SystemInfo.unsupportedIdentifier.
