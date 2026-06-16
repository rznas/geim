<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanTrait.RequiredBone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| i | Index of the bone to test. |

### Description

Is the bone a member of the minimal set of bones that Mecanim requires for a human model?

The indexing order of the bones is the same as that used for the BoneName array.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        string[] boneName = HumanTrait.BoneName;
        for (int i = 0; i < HumanTrait.BoneCount; ++i)
        {
            if (HumanTrait.RequiredBone(i))
                Debug.Log(boneName[i]);
        }
    }
}
```
