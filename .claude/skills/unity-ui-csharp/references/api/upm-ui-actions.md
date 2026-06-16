<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-ui-actions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Add and remove UPM packages or feature sets

You can perform a variety of package management tasks by using the Package Manager window.

Follow these tasks to manage **UPM packages** or **feature sets**. For information about managing **asset packages**, refer to Add and remove asset packages.

| **Topic** | **Description** |
| --- | --- |
| **Install a feature set from the Unity registry** | Install a feature set from the Features expander in the Package Manager window. |
| **Install a UPM package from a registry** | Install a package from the Unity registry or a scoped registry. |
| **Install a UPM package from the Asset Store** | Install UPM packages that you acquired from the **Asset Store**. |
| **Install a UPM package from a local folder** | Load a UPM package from a local folder on your computer. |
| **Install a UPM package from a local tarball file** | Load a UPM package from a tarball file stored locally. |
| **Install a UPM package from a Git URL** | Load a UPM package from a Git repository on a remote server. |
| **Install a UPM package by name** | Install a UPM package using its exact name. |
| **Remove a UPM package from a project** | Remove a **direct dependency** from your **project manifest**. |
| **Switch to another version of a UPM package** | Update an installed UPM package to a different version. |

The procedures described in these sections obscure a lot of the details of what the Package Manager is actually doing behind the scenes. The Package Manager window provides a visual interface to install and uninstall packages. The Package Manager installs and uninstalls packages by adding and removing packages as project dependencies in your project’s manifest. When it adds a package, it selects the correct version to install. The version that Package Manager selects doesn’t always match the version you indicated. For more information, refer to Package dependency and resolution.

## Additional resources

- Package types
- Add and remove asset packages
- Disable a built-in package
- Perform an action on multiple packages or feature sets
