<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-asset-pipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Asset Pipeline preferences reference

Use the Asset Pipeline preferences to control how Unity imports assets and uses the Accelerator cache server. To open the preferences, go to **Edit > Preferences > Asset Pipeline** (macOS: **Unity > Settings > Asset Pipeline**).

The Asset Pipeline preferences contain the following settings:

| **Property** | **Description** |
| --- | --- |
| **Auto Refresh** | Define when Unity automatically imports assets. Choose from the following:  **Disabled**: Turns off automatic refreshing.  **Enabled**: Imports assets automatically as they change.  **Enabled Outside Playmode**: Imports assets automatically as they change, but not while the Editor is in Play mode. |
| **Import Worker Count %** | Set a percentage of available logical CPU cores to use for the **Desired Import Worker Count** setting. For example, if your system has 16 logical cores and you set this preference to 25%, Unity sets the **Desired Import Worker Count** for new projects to 4. If you set this value too high, the import worker processes compete with other processes for system resources. The default value of 25% avoids assigning every logical core to imports so that the Editor stays responsive. For more information, refer to Import assets simultaneously. |
| **Directory Monitoring (Windows only)** | Monitors directories instead of scanning all project files to detect asset changes. |
| **Compress Textures on Import** | Compresses textures during import. When turned off, Unity imports textures in uncompressed formats, and compresses textures at build time. |
| **Verify Saving Assets** | Displays a dialog when Unity attempts to save assets, which you can use to confirm the individual assets to save. |
| **Show Enter Safe Mode Dialog** | Displays a confirmation dialog before the Editor enters safe mode because of script compilation errors. If you turn this setting off, the Editor automatically enters safe mode when it opens a project with compilation errors. |

## Unity Accelerator (Cache Server)

The **Unity **Accelerator** (Cache Server)** section contains the following settings for Unity Accelerator:

| **Property** | **Description** |
| --- | --- |
| **Default Mode** | Define the default setting for Unity Accelerator (enabled or disabled). You can override this per project in the Unity Editor settings. For more information, refer to Unity Accelerator. |
| **Default IP address** | Set the default IP address for Unity Accelerator to use. You can override this per project in the Unity Editor settings. |
| **Check Connection** | Select **Check Connection** to attempt to connect to the remote cache server. |

## Additional resources

- Project Settings reference
- Introduction to importing assets
- Introduction to Unity Accelerator
