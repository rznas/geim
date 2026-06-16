<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/dedicated-server-build.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Build your application for Dedicated Server

You can create a Dedicated Server build in either of the following ways:

- Unity Editor
- Scripting
- Command line

## Unity Editor

To create a Dedicated Server build in the Unity Editor, use the following steps:

1. Open the Build Profiles window from **File** > **Build Profiles**.
2. Select **Add Build Profile** to open the **Platform Browser** window.
3. Select the type of server to build from the list of available platforms. For example, select **Linux Server** to build a Linux server.
4. If the server type isn’t available, select **Install with Unity Hub** and follow the installation instructions. For information on how to install modules, refer to Add modules.
5. Select **Switch Profile** to set the new build profile as the active profile.
6. Click **Build**.

**Tip**: You can further configure the Dedicated Server build in the Player settings.

## Scripting

To create a Dedicated Server build using a script, set `buildPlayerOptions.subtarget` to `(int)StandaloneBuildSubtarget.Server`.

```
buildPlayerOptions.target = BuildTarget.StandaloneWindows;
// SubTarget expects an integer.
buildPlayerOptions.subtarget = (int)StandaloneBuildSubtarget.Server;
```

## Command line

To create a Dedicated Server build through the command line, use the `-standaloneBuildSubtarget Server` argument.

```
-buildTarget Linux64 -standaloneBuildSubtarget Server
```

## Code sign macOS Dedicated Server builds

Dedicated Server builds that aren’t code signed might display security warnings when deployed on macOS systems. To avoid such warnings, make sure you code sign the build before distribution. For more information, refer to the documentation on Code sign and notarize your macOS application.

## Additional resources

- macOS build settings reference
- Windows build settings reference
- Linux build settings reference
- Creating and Using Scripts
