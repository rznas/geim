<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SelectionMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determine the selection returned by Selection.GetTransforms.

The default transform selection mode is: SelectionMode.TopLevel | SelectionMode.ExcludePrefab | SelectionMode.Editable, which returns all parent transforms of objects that can be edited, and aren't prefabs.

### Properties

| Property | Description |
| --- | --- |
| Unfiltered | Uses everything in the selection when passed to Selection.GetTransforms. |
| TopLevel | Only return the topmost selected transform. A selected child of another selected transform will be filtered out. |
| Deep | Uses the transform of the selection and all child transforms of the selection. |
| ExcludePrefab | Excludes any prefabs from the selection. |
| Editable | Only include objects that can be edited. |
| Assets | Uses any selected assets when passed to Selection.GetTransforms. |
| DeepAssets | Includes all assets and subfolders if the selection contains folders. |
