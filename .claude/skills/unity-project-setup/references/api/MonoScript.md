<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoScript.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Representation of Script assets.

This class represents C# files stored in the project.

### Public Methods

| Method | Description |
| --- | --- |
| GetClass | Returns the System.Type object of the class implemented by this script. |

### Static Methods

| Method | Description |
| --- | --- |
| FromMonoBehaviour | Returns the MonoScript object containing specified MonoBehaviour. |
| FromScriptableObject | Returns the MonoScript object containing specified ScriptableObject. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |
| bytes | The raw bytes of the text asset. (Read Only) |
| dataSize | The size of the text asset data in bytes. (Read Only) |
| text | The text contents of the file as a string. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| GetData | Gets raw text asset data. |
| ToString | Returns the contents of the TextAsset as a read-only string. |

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
