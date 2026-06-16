<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-childCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of children the parent TransformHandle has.

**Note:** The parent is not included in the count.
 **Note:** Inactive GameObjects get included in the count.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    // generate a group of connected GameObjects
    void Awake()
    {
        GameObject go = new GameObject("top");        Random.InitState(System.Environment.TickCount);        // add 3, 4 or 5 "middle" children that report to "top"
        for (int i = 0; i < Random.Range(3, 6); i++)
        {
            GameObject go2 = new GameObject("middle" + i.ToString());
            TransformHandle go2TransformHandle = go2.transformHandle;
            go2TransformHandle.parent = go.transformHandle;            // add between 1 to 8 "bottom" children that report to the above "middle"
            for (int j = 0; j < Random.Range(1, 8); j++)
            {
                GameObject go3 = new GameObject("bottom" + j);
                TransformHandle go3TransformHandle = go3.transformHandle;
                go3TransformHandle.parent = go2TransformHandle;
            }
        }
    }    void Start()
    {
        // how many children does top have?
        GameObject go = GameObject.Find("top");
        Debug.Log(go.name + " has " + go.transformHandle.childCount + " children");        // pick a random middle group and pick a member of its children
        go = GameObject.Find("middle" + Random.Range(0, go.transformHandle.childCount));
        Debug.Log(go.name + " has " + go.transformHandle.childCount + " children");
    }
}
```
