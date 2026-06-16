<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.OnDestroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the scriptable object will be destroyed.

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
    }    public void OnEnable()
    {
        Debug.Log("OnEnable");
    }    public void OnDisable()
    {
        Debug.Log("OnDisable");
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

OnDestroy cannot be a co-routine.
