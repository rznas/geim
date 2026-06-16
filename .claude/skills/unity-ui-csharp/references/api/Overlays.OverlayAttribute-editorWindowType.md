<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Overlays.OverlayAttribute-editorWindowType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines which EditorWindow type the overlay is used in.

To make an overlay available in all Editor windows, specify `EditorWindow` as the type. To make the overlay available in the Scene view only, set `SceneView` as the type. If you omit this property, then you must instantiate the overlay with SceneView.AddOverlayToActiveView or OverlayCanvas.Add.
