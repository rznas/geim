<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/search-presets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Search presets

The Presets search provider finds presets in your project. Presets are assets that you can use to apply identical property settings across multiple components, assets, or settings for projects.

The Project and Asset Database providers can find preset assets, but the Presets provider can search for specific preset types and by preset properties.

## Query syntax

Provider token: `preset:`

Query example: Searches for a preset with the property `flare`.

```
preset: prop:flare
```

## Provider filters

The Presets provider has additional filters in the visual query builder. This table lists the filters and their textual query equivalents.

| Filter | Search token | Query example | Description |
| --- | --- | --- | --- |
| **Excluded Propertry** | `preset: exclude:<"property">` | `preset: exclude:"m_LocalRotation"` | Find presets with the specified property in their Excluded Properties list. |
| **Preset Property** | `preset: prop:<"property">` | `preset: prop:"m_LocalRotation.z"` | Find presets with the specified property in their Properties list. |
| **Preset Type** | `preset: t:<type>>` | `preset: t:transform` | Find presets of the specific type, such as a transform component. |

## Results

**Search** window tab: **Project**.

## Actions

The context menu for the Presets search provider includes the following actions:

| Action | Description |
| --- | --- |
| **Select** | Open the preset in the ****Inspector**** and **Project** windows. |
| **Open** | Open the preset in the Unity Editor or an external editor. |
| **Reimport** | For imported presets, reimports the preset from the source file. |
| **Reveal** | Opens the preset in your operating system’s file browser. |
| **Delete** | Deletes the preset. The Unity Editor requests confirmation before deleting. |
| **Copy Path** | Copies the preset’s path relative to your project’s root folder to the clipboard. |
| **Copy GUID** | Copies the preset’s GUID to the clipboard. |
| **Properties** | Opens a **Focused inspector** window for the preset. |

## Additional resources

- Reusing settings with preset assets
- Visual query builder
- Textual query references
- Activate and deactivate search providers
- Search query operators
