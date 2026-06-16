<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphDatabase.PromptInProjectBrowserToCreateNewAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| defaultName | The default name for the new asset if the user does not rename it. Defaults to "New Graph" if not specified. |

### Description

Creates a new graph asset and activates the naming field in the Project Browser.

Use this method to create a new graph asset directly from the editor UI. This action opens the Project Browser with the asset selected and its name field ready for editing. If the user does not provide a name, the system uses the value from `defaultName`. This method streamlines asset creation by combining instantiation and naming in one step.
