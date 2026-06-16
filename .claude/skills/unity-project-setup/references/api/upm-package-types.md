<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-package-types.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Differences between package types

Unity’s Package Manager supports two package types:

- **UPM packages** (Unity Package Manager built-in format).
- **Asset packages** (`.unitypackage` format).

The following table compares the differentiating characteristics of these package types:

| **Characteristic** | **UPM packages** | **Asset packages** |
| --- | --- | --- |
| Format | Collection of files and folders, which might be compressed, depending on the distribution method. | A compressed file with a `.unitypackage` extension. |
| Primary source for the package | Unity registry, scoped registry, or **Asset Store**. | Asset Store |
| Typical contents | **Scripts**, tools, utilities, and SDKs. | Art and media assets (such as models, textures, animations, audio.) |
| Supports package dependencies | Yes | No |
| Supports version switching in the Editor | Yes | No |
| Uses a package manifest file | Yes | No |
| UI action for adding the package to a project | Install | Download and import |
| Folder structure | Standardized | Free-form |
| Project folder the package is added to | `Packages` | `Assets` |
| Cache the package is added to | Global cache | Asset package cache. Refer to Location of downloaded asset package files. |
| You can manually remove the package from the cache | No | Yes |
| Sets of tabs that appear in the Details panel | Description, Version History, Dependencies, Samples (if provided), Images (if provided) | Overview, Releases, Imported Assets, Images |

## Guidelines for package creators

If you’re creating a package, follow these guidelines to help you determine which format to choose:

- Use UPM when you need **version control**, dependency management, or plan to share or maintain the package across multiple projects. The UPM format is more suited for code and reusable elements.
- Use Asset package (`.unitypackage`) for one-time imports of art assets such as (but not limited to) models, textures, animations, and audio. This format is also appropriate for informal package sharing, rather than distributing in a registry (scoped or otherwise).

## Additional resources

- Add and remove UPM packages or feature sets
- Add and remove asset packages
- Create UPM packages
- Create asset packages
