<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.GetInfoString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this method to show asset information on top of the asset preview.

You will also have to implement HasPreviewGUI and OnPreviewGUI in addition to this method. The default implementation just returns an empty string, which disables the feature.

**Note:** Inspector previews are limited to the primary editor of persistent objects (assets). For example, GameObjectInspector, MaterialEditor, TextureInspector, and so on. This means that it is currently not possible for a component to have its own inspector preview.
