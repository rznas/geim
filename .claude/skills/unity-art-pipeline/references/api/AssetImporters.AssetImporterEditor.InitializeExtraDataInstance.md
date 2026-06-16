<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.InitializeExtraDataInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| extraData | A ScriptableObject instance of the type provided by AssetImporterEditor.extraDataType. |
| targetIndex | The corresponding Editor.targets index of the provided extraData. |

### Description

This method is called during the initialization process of the Editor, after Awake and before OnEnable.

If the AssetImporterEditor have the CanEditMultipleObjects attribute and more than one Importer is selected, this method will be called once for each extraDataTargets using targetIndex to find the corresponding Editor.targets Importer.

Note: Assembly reloading or external changes made to the inspected file in the Editor may trigger this method outside of the initialization loop. However, you should always reset your data in the given object when it gets called to make sure you stay up to date with the asset file.

See a usage example at AssetImporterEditor.extraDataType.
