<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.CreateEditorWithContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Make a custom editor for `targetObject` or `targetObjects` with a context object.

This method is identical to CreateEditor except that the SerializedObject will be created using the context object passed as parameter. This context object will be used to store and retrieve the value for ExposedReference types declared on the SerializedObject.
