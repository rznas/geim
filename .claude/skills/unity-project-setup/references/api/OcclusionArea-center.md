<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/OcclusionArea-center.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Center of the occlusion area relative to the transform.

```csharp
using UnityEngine;[RequireComponent(typeof(OcclusionArea))]
public class Example : MonoBehaviour
{
    // Sets the center of the occlusion area to the center of the transform
    void Start()
    {
        transform.GetComponent<OcclusionArea>().center = Vector3.zero;
    }
}
```
