<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-ui-find.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Find packages and feature sets

The Package Manager window provides several ways to help you find a specific package or **feature set**:

| **Window control** | **Description** |
| --- | --- |
| Navigation panel (A) | Choose a context from the navigation panel to determine which list of packages displays. The context might be the source of the package, such as a registry server, the Asset Store, or the Unity Editor itself (for built-in packages). However, the **All Packages** context displays only those packages and feature sets that are already installed in the current project, regardless of their origin.  For example, you can choose the **My Assets** context to display only Asset Store packages available to you in the list, or choose the **All Packages** context to display Asset Store packages, Unity packages, and feature sets that are already installed in your project. |
| Sort control (B) | Sort the list in either ascending or descending order by name, published date (**Unity Registry**, **My Registries**, **All Packages** only), purchased date (Asset Store packages only), or recently updated (**My Assets** only).   For example, if you want to find an Asset Store package that had a recent update but you can’t remember the name of it, select **My Assets** , then sort by **Recently updated** and browse the list to find it.   Sorting affects the items under each collapsible section, but leaves the sections in place. If you sort from Z-A, the Package Manager reorders all the feature sets from Z-A inside the **Features** section, and all the packages under each section, but doesn’t mix the content in the list. |
| Filter controls (C) | Use the filter controls to narrow down the packages listed. Packages listed in **My Assets** have enhanced filtering options:  - **Status** (Downloaded, Imported, Update available, Unlabeled, Hidden, Deprecated) - **Categories** (3D, Add-Ons, 2D, Audio, etc.) - **Labels** (Custom labels you define in the Asset Store) |
| Search box (D) | Use the search box to look for a Unity package or an **Asset Store** package by name. |

Use these controls to narrow down which packages and feature sets appear in the list panel and in what order. This makes it easier to find what you’re looking for, or help you browse when you don’t know exactly what you want.

When you use several of these controls together, you narrow the set of matches that appears in the list.

After you find a package from a registry (not Asset Store), you can select it, then potentially locate a specific version in the details panel. For feature sets, there’s always only one version available, so you can either install it or remove it.

## Additional resources

- Find a specific version of a package
