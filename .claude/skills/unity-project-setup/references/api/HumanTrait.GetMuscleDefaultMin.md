<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HumanTrait.GetMuscleDefaultMin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| i | Muscle index. |

### Description

Get the default minimum value of rotation for a muscle in degrees.

The default minimum applies to all three axes of rotation for the muscle. The indexing order for the muscles is the same as that of the MuscleName array.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        string[] muscleName = HumanTrait.MuscleName;
        for (int i = 0; i < HumanTrait.BoneCount; ++i)
        {
            Debug.Log(muscleName[i] + " min: " + HumanTrait.GetMuscleDefaultMin(i) + " max: " + HumanTrait.GetMuscleDefaultMax(i));
        }
    }
}
```

Additional resources: HumanLimit.min, HumanTrait.GetMuscleDefaultMax.
