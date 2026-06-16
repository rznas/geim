<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SceneAsset is used to reference Scene objects in the Editor.

This can be used as the type for ObjectField UI elements, to allow the user to pick a Scene object as the value of the field.

This example shows how to pick a Scene in the editor. The ScenePicker component is placed on a game object in the Scene:

```csharp
using UnityEngine;public class ScenePicker : MonoBehaviour
{
    [SerializeField]
    public string scenePath;
}
```

The ScenePickerEditor script must be in the Editor directory of the project. It provides the custom inspector in the editor that uses the SceneAsset class in an ObjectField to allow the user to pick a Scene.

```csharp
using UnityEngine;
using UnityEditor;[CustomEditor(typeof(ScenePicker), true)]
public class ScenePickerEditor : Editor
{
    public override void OnInspectorGUI()
    {
        ScenePicker picker = target as ScenePicker;
        SceneAsset oldScene = AssetDatabase.LoadAssetAtPath<SceneAsset>(picker.scenePath);        serializedObject.Update();        EditorGUI.BeginChangeCheck();
        SceneAsset newScene = EditorGUILayout.ObjectField("scene", oldScene, typeof(SceneAsset), false) as SceneAsset;        if (EditorGUI.EndChangeCheck())
        {
            string newPath = AssetDatabase.GetAssetPath(newScene);
            SerializedProperty scenePathProperty = serializedObject.FindProperty("scenePath");
            scenePathProperty.stringValue = newPath;
        }
        serializedObject.ApplyModifiedProperties();
    }
}
```

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
