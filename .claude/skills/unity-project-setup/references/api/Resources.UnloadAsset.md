<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.UnloadAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unloads `assetToUnload` from memory.

This function can only be called on Assets that are stored on disk.

The referenced asset (assetToUnload) will be unloaded from memory. The object will become invalid and can't be loaded back from disk. Any subsequently loaded Scenes or assets that reference the asset on disk will cause a new instance of the object to be loaded from disk. This new instance will not be connected to the previously unloaded object.
