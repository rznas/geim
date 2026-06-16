<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CopySerialized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The object to copy the properties from. |
| dest | The object to copy the properties to. |

### Description

Copies all serialized properties of a Unity Object from one object to another.

This method copies all serialized properties from the `source` object to the `dest` object, overwriting values that are currently in the properties of `dest`. The fields that are included follow the script-serialization-rules.

This method is mostly useful when working with objects in assets. It is similar to Object.Instantiate in that it also copies the serialized properties of an object, but it overwrites an existing object, unlike `Instantiate` which always creates a new object.

Note that Object.hideFlags are not copied.

If the object being copied derives from MonoBehaviour or ScriptableObject, then `dest` must either be the same type as `source`, or a base class of it. Otherwise, the types of `dest` and `source` must be equal.

Because the Unity serializer is used to copy the values, if the ISerializationCallbackReceiver.OnBeforeSerialize method is implemented then it's invoked on the `source` object before copying. If the ISerializationCallbackReceiver.OnAfterDeserialize method is implemented, it's invoked on the `dest` object after copying.

The following example shows how this method could be used to reset the properties of an object to match a 'reference' object, instead of manually resetting the properties to hardcoded values.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CreateAssetMenu]
public class CopySerializedExample : ScriptableObject
{
    // Declare some serialized fields
    public int intValue;
    public string stringValue;
    public List<bool> listOfBools;

    #if UNITY_EDITOR
    [ContextMenu("Reset to reference")]
    public void ResetToReference()
    {
        // CopySerialized will overwrite the object name as well; we don't want that
        // so save it to a temporary variable so we can restore it afterwards
        var originalName = this.name;

        var reference = AssetDatabase.LoadAssetAtPath<CopySerializedExample>("Assets/ReferenceAsset.asset");
        EditorUtility.CopySerialized(reference, this);

        // Restore the original name
        this.name = originalName;
    }
    #endif
}
```
