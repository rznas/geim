<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LODGroup.ForceLOD.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The LOD level to use. Passing a negative index value enables automatic LOD selection. |

### Description

Disable automatic LOD selection based on camera distance by forcing a specific LOD level, or revert to the default automatic behavior by passing a negative value as parameter.

This method specifies explicitly which LOD level Unity should use. You can achieve the same result in a script by disabling the `LODGroup` component and renderers of the unneeded LOD levels, but using the `ForceLOD` method provides slightly better CPU performance. This is relevant if you need to force a particular LOD state only for a few frames. This method lets you avoid storing the original states of the renderers when you force an LOD level.

If you need to force a particular LOD level for a large number of LODGroups for a large number of frames, the alternative approach of disabling the `LODGroup` and renderers might provide better CPU performance.

```csharp
using UnityEngine;public class SampleScript : MonoBehaviour
{
    public bool isHero = false;    private LODGroup m_LODGroup;    void Start()
    {
        m_LODGroup = GetComponent<LODGroup>();
    }    void Update()
    {
        if (!m_LODGroup)
            return;        // Force LOD to highest quality level (0) when in hero mode
        // Else enable automatic LOD selection (-1).
        m_LODGroup.ForceLOD(isHero ? 0 : -1);
    }
}
```
