<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor-target.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The object being inspected.

For editors that support multi-object editing, the target property should not be used inside OnInspectorGUI since it only refers to the first of the edited objects. It should still be used in OnSceneGUI and OnPreviewGUI, which will be called once for each of the selected objects with the target property referring to each of them in turn.

Additional resources: targets, serializedObject, Editor class.
