<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.Awake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when an instance of `ScriptableObject` is created.

`Awake` is called when a new instance of a `ScriptableObject` is created, which happens in the following scenarios:

- At Editor startup, for all ScriptableObjects referenced in open scenes.
- On creation of a new ScriptableObject created as an asset via the Create Asset menu in the Editor
- On instantiation of a ScriptableObject instantiated at runtime via ScriptableObject.CreateInstance or by runtime loading of the asset.
- On first loading a scene which contains a reference to the ScriptableObject in the Hierarchy window, or on subsequent loads if the original instance has since been garbage collected.
- On first selection of a ScriptableObject in the Project window, or on subsequent selections if the original instance has since been garbage collected.

**Note**: ScriptableObjects created as assets in Edit mode are not recreated on entering Play mode. To perform initialization work in a `ScriptableObject` on entering Play mode, use ScriptableObject.OnEnable instead.

An example is given below. This example has two scripts. The first shown is the ScriptableObject script. This implements code which is separate from MonoBehaviour. The second is a small MonoBehaviour related script which accesses values from the ScriptableObject script.

```csharp
// A ScriptableObject example script.
// The A and B members implement features which
// are unrelated to MonoBehaviour.using UnityEngine;public class ScriptObj : ScriptableObject
{
    int a = 10;
    int[] b = new int[5] {0, 17, 34, 42, 67};    public int A
    {
        get {return a; }
    }    // return value in b array, or -1 if x is out-of-range
    public int B(int x)
    {
        if (x >= 0 && x < 5)
            return b[x];
        else
            return -1;
    }    public void Awake()
    {
        Debug.Log("Awake");
    }    public void OnDestroy()
    {
        Debug.Log("OnDestroy");
    }
}
```

The following script makes use of the above ScriptableObject script.

```csharp
// create and access the ScriptObjusing UnityEngine;public class ScriptObjExample : MonoBehaviour
{
    ScriptObj test;    void Start()
    {
        test = (ScriptObj)ScriptableObject.CreateInstance(typeof(ScriptObj));        print(test.A);
        print(test.B(3));
        print(test.B(-3));
    }
}
```
