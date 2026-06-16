<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorJsonUtility.FromJsonOverwrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| json | The JSON representation of the object. |
| objectToOverwrite | The object to overwrite. |

### Description

Overwrite data in an object by reading from its JSON representation.

This is similar to JsonUtility.FromJsonOverwrite, but it supports any engine object.

Note that using this method with a struct may not do what you expect because structs are passed to the method by value and not by reference. This means that instead of the method overwriting your original struct, a boxed copy of the struct is passed into the method and overwritten. You can avoid this by making your own boxed copy of the struct to pass into the method and then copying the values back again after the method returns. See example below.

Even when you do this, Unity’s built-in structs (such as Vector3 or Bounds) cannot be directly passed to the method, so you must enclose Unity’s built-in structs inside a wrapper class or struct.

```csharp
using UnityEngine;
using UnityEditor;[System.Serializable]
struct MyStruct
{
    public int value;
}public class StructExample : MonoBehaviour
{
    void Start()
    {
        MyStruct myStruct = new MyStruct();
        object boxedStruct = myStruct;
        var json = @"{ ""value"" : 42 }";
        EditorJsonUtility.FromJsonOverwrite(json, boxedStruct);
        myStruct = (MyStruct)boxedStruct;
        Debug.Log("myStruct.value = " + myStruct.value);
    }
}
```
