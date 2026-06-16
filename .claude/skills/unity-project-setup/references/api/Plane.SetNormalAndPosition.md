<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Plane.SetNormalAndPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inNormal | The plane's normal vector. |
| inPoint | A point that lies on the plane. |

### Description

Sets a plane using a point that lies within it along with a normal to orient it.

Note that the normal must be a *normalised* vector.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public float fieldLength;
    public float fieldWidth;
    public Plane goalLine1;
    public Plane goalLine2;
    public Plane leftSideLine;
    public Plane rightSideLine;    void Start()
    {
        // Set up goal lines of a playing field.
        goalLine1.SetNormalAndPosition(Vector3.forward, Vector3.forward * fieldLength / 2);
        goalLine1.SetNormalAndPosition(-Vector3.forward, -Vector3.forward * fieldLength / 2);        // Set up side lines.
        leftSideLine.SetNormalAndPosition(-Vector3.right, -Vector3.right * fieldWidth / 2);
        rightSideLine.SetNormalAndPosition(Vector3.right, Vector3.right * fieldWidth / 2);
    }
}
```

Additional resources: Set3Points.
