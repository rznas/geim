<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for all objects Unity can reference.

`UnityEngine.Object` is the base class for all built-in Unity objects. Don't derive from or instantiate this class directly. Instead, use the appropriate subclass such as GameObject, MonoBehaviour, or ScriptableObject.

Any public variable you make that derives from `UnityEngine.Object` is shown in the Inspector as a drop target, allowing you to set the value from the GUI.

Some APIs are designed to work with any Unity Object, so Object appears as a type in their signatures. For example, Resources.LoadAll, EditorJsonUtility.ToJson and SerializedObject.

Each instance of a class that derives from `UnityEngine.Object` is linked to a counterpart native object. If the native counterpart is destroyed before the managed object is garbage collected, or if the instance references a missing asset or missing type, the managed instance can be in a detached state.

Detached objects retain their InstanceID, but the object can't be used to call methods or access properties. Comparing objects in this state with `null` evaluates `true`, because of Unity's custom implementation of the equality (`==`) and inequality (`!=`) operators and Object.bool. However, because the managed object is not truly null, a call to `Object.ReferenceEquals(myobject, null)` returns `false`.

The [null-conditional operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions#null-conditional-operator) (`?.`) and the [null-coalescing operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions#the-null-coalescing-operator)(`??`) are not supported with Unity Objects because they can't be overridden to treat detached objects the same as null. It's only safe to use those operators if the checked objects are guaranteed to never be in a detached state.

Additional resources: Object in the Unity manual.

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
