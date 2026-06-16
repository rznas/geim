<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-ui-list.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# List panel reference

The Package Manager window displays the list of feature sets, packages, or **Asset Store** packages that meet your criteria.

You set the criteria by selecting a context in the navigation panel, and by optionally setting additional filter and search criteria.

For important information about the way search works, refer to Search box.

**(A)** Feature sets appear at the top of the list panel when you select the **Unity Registry** or **All Packages** contexts. Feature sets are indicated with the feature set icon (). Toggle the expander icon () to expand or collapse () the list of feature sets. When you select a feature set from the list, details about it appear on the right. These details include a brief description, a list of included packages, and a link to the **QuickStart** guide for that feature set.

**(B)** Asset Store packages appear in the **All Packages** list for all packages you added to your project from the **My Assets** list.

**(C)** Registry groups organize the list of packages installed in your project or available for installation. The list has separate groups for packages that come from Unity’s registry and other scoped registries you installed in your project. Select the expander on the left to expand () or collapse () the list of packages for each registry.

**(D)** The installed or imported version of the package. If the package isn’t installed or imported yet, the listed version varies by package format:

- For **UPM packages**, the list view displays the recommended version. If a recommended version doesn’t exist, the list view displays the latest version.
- For **asset packages** (`.unitypackage` format), the list view displays the latest of version of the package, unless you downloaded the package but didn’t import it, in which case the downloaded version displays.

The following labels appear beside the version number for packages whose state isn’t Released:

- Pre-release
- Experimental
- Custom (embedded)

For packages from the Asset Store, the version that appears is either the version you already downloaded or the version that’s available for download from the Asset Store.

**(E)** These icons display the status of the package:

| **Icon** | **Description** |
| --- | --- |
|  | A check mark indicates that the package or feature set is already installed, enabled, or imported. |
|  | The update icon indicates that the package has an available update. To update your package, follow the appropriate instructions based on the package type:  - For Unity Package Manager (UPM) packages, refer to Switch to another version of a UPM package.  - For asset packages, refer to Update an asset package. - You can’t update feature set versions because they’re fixed to the Editor version. |
|  | The lock icon indicates a package that’s installed as part of a feature set. |
|  | The link icon indicates a package that’s installed as a dependency. |
|  | The import icon indicates that there’s an asset package available to import. |
|  | The download icon indicates that there’s an asset package available to download. |
|  | A warning icon indicates an issue with the package, such as lifecycle deprecation. |
|  | An error icon indicates package version deprecation or an issue that occurred during installation or loading. For information about resolving errors, refer to Package Manager troubleshooting. |

**(F)** The **My Assets** context displays a counter showing the number of packages from the Asset Store that are available but not shown in the list. To load more packages from the Asset Store , click the **Load** link.

**Note**: If you select the **My Assets** context but the Package Manager window doesn’t list any packages, refer to Error messages in the Package Manager window for an explanation and solution.

**(G)** The status bar displays messages about the package load status and network warnings.

**(H)** Click the **reload**  button to force the Package Manager to reload your packages and feature sets.

By default, the Package Manager window displays the list of all packages and feature sets available in the selected context, but you can filter the list to display packages and feature sets that meet your criteria.

You can also include pre-release packages in the list and search for a specific package or feature set by name (ID) or display name.

## Additional resources

- Package types
