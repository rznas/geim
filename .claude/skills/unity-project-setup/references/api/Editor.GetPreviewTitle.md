<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.GetPreviewTitle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override this method if you want to change the label of the Preview area.

If null is returned the default text "Preview" will be used.

**Note:** Inspector previews are limited to the primary editor of persistent objects (assets), e.g., GameObjectInspector, MaterialEditor, TextureInspector. This means that it is currently not possible for a component to have its own inspector preview.
