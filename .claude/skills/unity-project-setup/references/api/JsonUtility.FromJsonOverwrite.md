<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JsonUtility.FromJsonOverwrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| json | The JSON representation of the object. |
| objectToOverwrite | The object that should be overwritten. |

### Description

Overwrite data in an object by reading from its JSON representation.

This method is very similar to JsonUtility.FromJson, except that instead of creating a new object and loading the JSON data into it, it loads the JSON data into an existing object. This allows you to update the values stored in classes or objects without any allocations.

Internally, this method uses the Unity serializer. The object you're creating and all its fields must meet the requirements for serialization by the Unity serializer. For the full list of these requirements, refer to Serialization rules in the manual.

`FromJsonOverwrite` supports any plain class and classes derived from MonoBehaviour or ScriptableObject. Other engine types are not supported. In the Editor only, you can use EditorJsonUtility.FromJsonOverwrite to overwrite other engine objects.

**Note**: Since `FromJsonOverwrite` takes a reference type, passing a struct (a value type) to it requires careful [boxing and unboxing](https://learn.microsoft.com/en-us/dotnet/csharp/programming-guide/types/boxing-and-unboxing) and is not recommended. Instead, use JsonUtility.FromJson for structs as follows: `JsonUtility.FromJson<MyStruct>(json);`

If a field of the object is not present in the JSON representation, that field will be left unchanged.

`FromJsonOverwrite` can be called from background threads. You should not alter the object that is being overwritten while the function is running.

```csharp
using UnityEngine;public class PlayerState : MonoBehaviour
{
    public string playerName;
    public int lives;
    public float health;    public void Load(string savedData)
    {
        JsonUtility.FromJsonOverwrite(savedData, this);
    }    // Given JSON input:
    // {"lives":3, "health":0.8}
    // the Load function will change the object on which it is called such that
    // lives == 3 and health == 0.8
    // the 'playerName' field will be left unchanged
}
```
