<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshPath-corners.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Corner points of the path. (Read Only)

Also known as "waypoints", the corners define the places along a path where it changes direction (ie, the path consists of a number of straight-line moves between corners).

```csharp
using UnityEngine;
using UnityEngine.AI;
using System.Collections;public class ExampleClass : MonoBehaviour {
    float PathLength(NavMeshPath path) {
        if (path.corners.Length < 2)
            return 0;
        
        float lengthSoFar = 0.0F;
        for (int i = 1; i < path.corners.Length; i++) {
            lengthSoFar += Vector3.Distance(path.corners[i - 1], path.corners[i]);
        }
        return lengthSoFar;
    }
}
```
