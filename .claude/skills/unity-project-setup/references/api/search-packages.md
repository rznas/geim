<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/search-packages.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Search for packages

The Packages search provider finds packages in your project and in the Unity Registry.

## Query syntax

Provider token: `pkg:`

**Note:** You can’t implicitly use this search provider as part of a default search. You must explicitly use its search token or its visual query filter.

Query example: Searches the Package Manager for the text `probu` to find the ProBuilder package.

```
pkg: probu
```

## Provider filters

The Packages provider has no additional filters.

## Results

**Search** window tab: **Logs**.

## Actions

The context menu for the Packages search provider includes the following actions:

| Action | Description |
| --- | --- |
| **Open** | Opens the package in the **Package Manager** window. This is the default double-click action. To change the default action, refer to Preferences. |
| **Install** | Install the package; the Unity Editor requests confirmation before installing. |
| **Remove** | Uninstalls the package from the Project. |

## Additional resources

- Package Manager
- Visual query builder
- Textual query references
- Activate and deactivate search providers
