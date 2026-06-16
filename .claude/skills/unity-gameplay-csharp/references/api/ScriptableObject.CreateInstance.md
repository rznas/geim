<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.CreateInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| className | The type of the ScriptableObject to create, as the name of the type. |
| type | The type of the ScriptableObject to create, as a System.Type instance. |

### Returns

**ScriptableObject** The created ScriptableObject.

### Description

Creates an instance of a scriptable object.

To easily create a ScriptableObject instance that is bound to a .asset file via the Editor user interface, consider using CreateAssetMenuAttribute.

```csharp
using UnityEngine;public class MyData : ScriptableObject
{
    public int value;
}public class CreateInstance : MonoBehaviour
{
    void Start()
    {
        ScriptableObject nonGenericInstance = ScriptableObject.CreateInstance(typeof(MyData));
        ((MyData)nonGenericInstance).value = 20;
        Debug.Log("Non-generic instance value: " + ((MyData)nonGenericInstance).value);
    }
}
```

### Returns

**T** The created ScriptableObject.

### Description

Creates an instance of a scriptable object.

To easily create a ScriptableObject instance that is bound to a .asset file via the Editor user interface, consider using CreateAssetMenuAttribute.

```csharp
using UnityEngine;public class MyData : ScriptableObject
{
    public int value;
}public class CreateInstanceGeneric : MonoBehaviour
{
    void Start()
    {
        MyData genericInstance = ScriptableObject.CreateInstance<MyData>();
        genericInstance.value = 10;
        Debug.Log("Generic instance value: " + genericInstance.value);
    }
}
```
