<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor-useAssetDrawPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines if the asset preview is handled by the AssetEditor or the Importer DrawPreview

We usually want to redirect the DrawPreview to the AssetEditor, but there are few cases we don't want that. If you want to use the Importer DrawPreview, then override useAssetDrawPreview to false.
