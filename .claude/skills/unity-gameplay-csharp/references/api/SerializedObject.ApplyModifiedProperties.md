<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject.ApplyModifiedProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if any pending property changes were applied to the target objects of the SerializedObject.

### Description

Apply property modifications.

Each instance of SerializedObject contains a serialized representation of its target objects. Changes applied via the SerializedProperty API are not reflected back to the target objects until this method is called. First Undo information is recorded, then each target object is brought in sync by loading from the SerializedObject's local serialized content.

 Additional resources: Update, ApplyModifiedPropertiesWithoutUndo
