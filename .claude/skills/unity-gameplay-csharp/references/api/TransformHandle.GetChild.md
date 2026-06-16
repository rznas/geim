<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.GetChild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the child transform to return. Must be smaller than TransformHandle.childCount. |

### Returns

**TransformHandle** Transform child by index.

### Description

Returns a transform child by index.

If the transform has no child, or the index argument has a value greater than the number of children then an error will be generated. In this case "Transform child out of bounds" error will be given. The number of children can be provided by childCount.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public TransformHandle meeple;
    public TransformHandle grandChild;    public void Example()
    {
        //Assigns the transform of the first child of the Game Object this script is attached to.
        meeple = this.transformHandle.GetChild(0);        //Assigns the first child of the first child of the Game Object this script is attached to.
        grandChild = this.transformHandle.GetChild(0).GetChild(0);
    }
}
```
