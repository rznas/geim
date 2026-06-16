<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor-serializedObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A SerializedObject representing the object or objects being inspected.

Use the serializedObject inside the OnInspectorGUI function of a custom Editor, as described on the page about the Editor class.

Do not use the serializedObject inside OnSceneGUI or OnPreviewGUI. Use the target property directly in those callback functions instead.

Additional resources: Editor class, SerializedObject class.
