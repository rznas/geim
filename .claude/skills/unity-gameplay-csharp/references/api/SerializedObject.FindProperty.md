<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject.FindProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Find serialized property by name.

You can use this to find a specific property in the target object.

Additional resources: GetIterator, SerializedProperty.

```csharp
using UnityEngine;
using UnityEditor;public class MyObject : ScriptableObject
{
    public int myInt = 42;
}public class SerializedPropertyTest : MonoBehaviour
{
    void Start()
    {
        MyObject obj = ScriptableObject.CreateInstance<MyObject>();
        SerializedObject serializedObject = new UnityEditor.SerializedObject(obj);        SerializedProperty serializedPropertyMyInt = serializedObject.FindProperty("myInt");        Debug.Log("myInt " + serializedPropertyMyInt.intValue);
    }
}
```
