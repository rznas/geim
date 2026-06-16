<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.SetDirty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The object to mark as dirty. |

### Description

Marks `target` object as dirty.

You can use SetDirty when you want to modify an object without creating an undo entry, but still ensure the change is registered and not lost. If the object is part of a Scene, the Scene is marked dirty. If the object may be part of a Prefab instance, you additionally need to call PrefabUtility.RecordPrefabInstancePropertyModifications to ensure a Prefab override is created.

If you do want to support undo, you should not call SetDirty but rather use Undo.RecordObject prior to making changes to an object, since this will both mark the object as dirty (or the object's Scene if it is part of a Scene) and provide an undo entry in the editor. You should still also call PrefabUtility.RecordPrefabInstancePropertyModifications if the object may be part of a Prefab instance.

In the case of ScriptableObject, call both SetDirty and Undo.RecordObject, if you want to register the change and support undo.

When you create editor UI for manipulating an object, such as a custom editor to modify serialized properties on a component or asset, if possible, you should use the SerializedProperty system using SerializedObject.FindProperty, SerializedObject.Update, EditorGUILayout.PropertyField, and SerializedObject.ApplyModifiedProperties. This will automatically mark the object as dirty, create an undo entry, and ensure Prefab overrides are created if relevant.

Additional resources: GetDirtyCount, IsDirty.
