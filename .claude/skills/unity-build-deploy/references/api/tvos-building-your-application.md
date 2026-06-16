<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/tvos-building-your-application.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Build your application for tvOS

To build your Unity application for tvOS, use the following steps:

1. Open the Build Profiles window from **File** > **Build Profiles**.
2. Select **Add **Build Profile**** to open the **Platform Browser** window.
3. Select **tvOS** from the list of available platforms. If **tvOS** isn’t an option, select **Install with Unity Hub** and follow the installation instructions. For information on how to install modules, refer to [Add modules](https://docs.unity.com/hub/add-modules).
4. Set **Architecture** to the architecture type you want Unity to build your application for.
5. If you want to create an Xcode project for your application, enable **Create Xcode Project**.
6. Select **Switch Profile** to set the new build profile as the active profile.
7. Click **Build**.

Similar to iOS, building your application to a tvOS device involves two steps:

1. Unity builds an Xcode project.
2. Xcode builds that project to your device.

To select the device that Xcode builds to, follow these steps:

1. Connect the device to your computer.
2. From Xcode’s main menu, go to **Product** > **Destination**, and select your device from the Devices list.

tvOS build settings are the exact same as those for iOS. Refer to iOS build settings reference to check which settings you can configure for your build.

## Incremental build pipeline

Unity uses the incremental build pipeline when it builds the Player for tvOS. This means that Unity incrementally builds/generates files such as Information Property List (plist) files and [Entitlement](https://developer.apple.com/documentation/bundleresources/entitlements) files. If you implement callbacks that modify or move any iOS file or asset that the incremental build pipeline uses, see Creating clean builds.
