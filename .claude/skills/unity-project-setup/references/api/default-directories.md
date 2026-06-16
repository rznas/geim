<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/default-directories.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Default project directories

When you create a project, Unity creates a project folder which contains default subfolders. These default subfolders each have a specific role in organizing your project’s files, settings, and data.

**Important:** Using cloud-based storage methods to store your project is an unsupported workflow. It can cause synchronization issues which corrupt your project. Use version control to manage your project.

The default directories that Unity creates are as follows:

## Assets

Use the `Assets`folder to store all asset files related to your project, including **scripts**, textures, models, audio files, and scenes. For more information, refer to Introduction to importing assets.

The folder contains the following files and subfolders:

| **File or folder** | **Description** |
| --- | --- |
| `InputSystem_Actions` | A default input action asset. For more information, refer to Input action assets. |
| `Scenes` | Contains a default scene called `SampleScene`. |
| `Settings` | Contains asset setting files that determine how Unity handles certain assets in your project by default. The default settings Unity creates depend on the template you used to create your project. Examples include default settings for the volumes in your project, and default Universal renderer assets and Universal Render Pipeline assets for mobile and desktop. |
| `TutorialInfo` | Files related to the in-Editor tutorials. |

## Library

The `Library` folder contains a local cache of imported assets and metadata. Exclude the `Library` folder from version control, because it’s unique to your computer and is a working directory for your project. It also doesn’t display in the Project window of the Unity Editor.

You can delete the `Library` folder to troubleshoot unexplained issues or a corrupted project. Unity regenerates the folder the next time you open the project. However, only delete the `Library` folder as a last-resort measure for critical, unrecoverable errors. Deleting it forces Unity to recompile all project code and reimport all assets, which can take a significant amount of time.

**Warning:** Don’t edit the contents of the `Library` folder. It contains data that might corrupt your project if you edit it. The following information is provided for reference only.

| **Folder** | **Description** |
| --- | --- |
| `APIUpdater` | Contains files related to the API updater process. |
| `Artifacts` | Contains files related to asset processing and compilation. |
| `Bee` | Contains data related to Unity’s build process. |
| `BuildPlayerData` | Contains cached type data from the most recent Player or content-only build. |
| `BuildProfiles` | Contains files related to build profiles. |
| `BurstCache` | Contains cache data for the [Burst compiler](https://docs.unity3d.com/Packages/com.unity.burst@latest). |
| `PackageCache` | Contains the installed packages in your project. |
| `PackageManager` | Contains data related to the Package Manager. |
| `PlayerDataCache` | Contains cached data from the most recent Player build. |
| `PlayerScriptAssemblies` | Contains assemblies compiled for the target platform. Used during content-only builds. |
| `ScriptAssemblies` | Contains files related to Unity’s scripting processes. |
| `Search` | Contains data related to Unity Search. |
| `ShaderCache` | Contains cache data related to the **shaders** in your project. |
| `StateCache` | Contains cache data related to the current Editor session, including the state of the Hierarchy window and **Scene view**. |
| `TempArtifacts` | A folder that Unity uses to store temporary import data, before moving it to the `Artifacts` folder. |

## Logs

Contains log files related to import operations and other Editor processes. For more information, refer to Log files reference.

## Packages

Contains a `manifest.json` file which defines the packages to use in your project.

## ProjectSettings

Contains project-specific settings files, such as settings for building, graphics, and memory, and managers for input, tags, and presets.

## Temp

A folder for temporary data, which gets cleared every time you close Unity. Exclude this folder from version control.

## UserSettings

Contains settings for your local version of the project, such as specific user preferences, and your preferred Editor layout. Exclude from version control to avoid overwriting your teammates’ personal Unity preferences.

## Additional resources

- Introduction to importing assets
- Log files reference
