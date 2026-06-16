<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-ui.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Package Manager window reference

Access the Package Manager window from the Unity Editor’s **Window** > **Package Management** menu.

Use the Package Manager window to:

- View which packages and feature sets are available for installation or already installed in your project.
- Check which package versions are available.
- Install, update, or remove UPM packages or feature sets.
- Download and import, update, or remove asset packages.
- Disable built-in packages.

**(A)** The Unity Editor **toolbar** displays the Package Manager icon. A red icon indicates errors. A yellow icon indicates warnings or experimental packages in use.

The Package Manager window displays:

**(B)** The **install**  button, which you can click to install a package directly into your project by entering a git URL, a local path, or a package name.

**(C)** The navigation panel, which you can use to select a context to change what appears in the list panel **(H)**.

**(D)** The Sort menu, which you can use to sort the list of packages and feature sets by name or date.

**(E)** The Filter menu, which you can use to narrow down which packages appear in the list panel **(H)**. The **Filters** menu and the **Clear Filters** button are disabled for the **Built-in** list. They’re also disabled for the **All Packages** context (unless you have subscription-based packages), because that context in the **Project** group of the navigation panel has a related view for **Updates**.

**(F)** The search box, which you can use to look for packages and feature sets by name.

**(G)** The **Advanced** menu , which you can use to access the **project settings** for the Package Manager, preferences, and more. Refer to Advanced settings for details.

**(H)** The list panel, which displays packages for the type you selected in the navigation panel, limited by any filter and search parameters you specified.

**(I)** The details panel, which displays information specific to the package or feature set selected in the list panel.

**(J)** Buttons to perform any of the following actions at the project level:

- Install a UPM package.
- Update a UPM package.
- Locate the **package manifest** file in the **Project** window.
- A **Manage** dropdown, which has entries for managing a UPM package, such as:
  - Remove a UPM package.
  - Customize a UPM package, which copies the package to your project folder.
  - Open the package manifest for **immutable** packages.
  - Edit the package manifest for **mutable** packages.
- Download and import, update, or remove asset packages.
- Install or remove feature sets.
- Disable or enable **built-in packages**.
- Install or remove services.

**(K)** The package details tabs, which display further information about the selected package or feature set. The tabs are dynamic, based on the selected item. For information about these tabs, refer to Details panel.

**(L)** The status bar, which displays information when the Package Manager loads packages and feature sets. This information includes errors and warning messages, the number of **Asset Store** packages available, and a link to load more packages from the Asset Store.

**(M)** The **Refresh list**  button lets you refresh the list of packages displayed. In the **My Assets** context, **Refresh list** is a menu, which has a **Check for updates** option. You can use **Check for updates** to check for updates to all packages on your computer, not just the ones that are visible in the **My Assets** context.

## Advanced settings

The advanced settings  menu allows you to perform these actions:

| **Menu item** | **Action results** |
| --- | --- |
| **Project Settings** | Select this item to open the Package Manager project settings, where you can:  - List pre-release packages when browsing the Unity Registry. - Add, edit, and remove scoped registries in your project. |
| **Preferences** | Select this item to view and set Preferences for the Unity Editor and related windows and tools. |
| **Manual resolve** | Select this item to force the Package Manager to resolve the project’s packages. If needed, it re-installs altered or missing packages and removes extraneous packages. |

## Status bar

The Package Manager displays messages in the status bar at the bottom of the Package Manager window.

There are typically four status messages that the Package Manager might display:

- The first time you open the Package Manager window in a new project, the **Refreshing list** message appears briefly:   Message for refreshing packages and features  This message also appears when you click **Refresh list**
- When you select the **My Assets** context in the navigation panel, the load bar appears above the date. It displays the number of packages from the Asset Store. Select **Load** to load more packages.   On the left, the load bar displays the number of **My Assets** packages loaded and the total number available.
- Most of the time, the status bar displays the date and time of when the Package Manager window last refreshed its information. However, if the Package Manager detects a problem, such as a network issue, the Package Manager prompts you to sign in:   Network error message
- If your network connection is working, but you’re not signed into your [Unity account](https://id.unity.com/), the Package Manager doesn’t display any packages from the Asset Store. When you select **My Assets** in the navigation panel, the Package Manager prompts you to sign in:   Logged out of Unity account  In the list panel, click **Sign in** to sign in to your Unity account through the Unity Hub.

For information on how to resolve these errors and more, refer to Package Manager troubleshooting.

## Additional resources

- Get started with packages
- Packages and package management
- Finding package documentation
