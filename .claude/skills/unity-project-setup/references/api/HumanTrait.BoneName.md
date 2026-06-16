<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanTrait.BoneName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Array of the names of all human bone types defined by Mecanim.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        string[] boneName = HumanTrait.BoneName;
        for (int i = 0; i < HumanTrait.BoneCount; ++i)
        {
            Debug.Log(boneName[i]);
        }
    }
}
```
