<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.WriteAccessRequiredAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specify which struct method and property requires write access to be invoked.

Used in conjunction with the ReadOnlyAttribute, WriteAccessRequiredAttribute lets you specify which struct method and property requires write access to be invoked. When you add the ReadOnly attribute to a native container, it indicates that only operations that read data can be performed on the native container, and you can't use methods and properties on the native container that modify the array. The `WriteAccessRequired` attribute indicates which methods and properties can't be used on a native container with the ReadOnly attribute.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using Unity.Collections;
using UnityEngine;[NativeContainer]
public struct MyList<T> where T : struct
{
    public int Length { get; private set; }    [WriteAccessRequired]
    public void Grow(int capacity)
    {
        // ...
    }
}public class MyMonoBehaviour : MonoBehaviour
{
    [ReadOnly]
    MyList<int> readOnlyList;    MyList<int> writableList = new MyList<int>();    public void OnUpdate()
    {
        writableList.Grow(10); // Ok
        readOnlyList.Grow(10); // Illegal
    }
}
```
