<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.PresetSelector.ShowSelector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targets | The list of objects to which the selected Preset is applied. |
| currentSelection | The selected Preset when the window is opened. Set to 'null' for no selection. |
| createNewAllowed | Whether to show the 'Create New Preset...' button. Set to true to show the button. Set to false to hide this button. |
| onSelectionChanged | Callback invoked when the selected Preset is changed. Provides the selected preset as argument. |
| onSelectionClosed | Callback invoked when the PresetSelector window is closed. Provides as arguments the selected preset and whether or not the selction was cancelled. |

### Description

Opens a modal window to select a Preset.

### Parameters

| Parameter | Description |
| --- | --- |
| presetType | Filters the list of Presets based on a specific PresetType. |
| currentSelection | The selected Preset when the window is opened. Set to 'null' for no selection. |
| presetProperty | The SerializedProperty behind an ObjectField used to select preset assets. |
| createNewAllowed | Whether to show the 'Create New Preset...' button. Set to true to show the button. Set to false to hide this button. |

### Returns

**ISearchView** Returns the search view.

### Description

Opens a modal window to select a Preset from an object field backed by a SerializedProperty.

### Parameters

| Parameter | Description |
| --- | --- |
| target | Object that identifies the type of Preset asset being selected. The modal window filters the selector view based on this object. |
| currentSelection | The selected Preset when the window is opened. Set to 'null' for no selection. |
| createNewAllowed | Whether to show the 'Create New Preset...' button. Set to true to show the button. Set to false to hide this button. |
| eventReceiver | The PresetSelectorReceiver instance that the PresetSelector uses to send events. |
| presetType | Filters the list of Presets based on a specific PresetType. Use this param to set the PresetType when no target is specified. |

### Description

OBSOLETE. Opens a modal window to select a Preset.
