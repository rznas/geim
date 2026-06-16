<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/search-settings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Search settings and preferences

Use the Settings search provider to find settings in the Project Settings and Preferences windows.

## Query syntax

Provider token: `set:`

Query example: Searches for all light-related settings and preferences.

```
set: light
```

## Provider filters

The Settings provider has additional filters in the visual query builder. This table lists the filters and their textual query equivalents.

| Filter | Search token | Query example | Description |
| --- | --- | --- | --- |
| **Scope: Project** | `set: scope:project` | `set: scope:project physics` | Searches for physics settings in the Project Settings window. |
| **Scope: User** | `set: scope:user` | `set: scope:user physics` | Searches for physics settings in the Preferences window. |

## Results

**Search** window tab: **Settings**.

## Actions

Default action: Opens the page in the Project Settings or Preferences window.

## Additional resources

- Project Settings
- Preferences
- Visual query builder reference
- Textual query references
- Activate and deactivate search providers
- Search query operators
