<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/OcclusionArea-size.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Size that the occlusion area will have.

```csharp
using UnityEngine;[RequireComponent(typeof(OcclusionArea))]
public class Example : MonoBehaviour
{
    // Sets an Occlusion area of 10 units in x, 20 units in y and 30 units in z
    void Start()
    {
        transform.GetComponent<OcclusionArea>().size = new Vector3(10, 20, 30);
    }
}
```
