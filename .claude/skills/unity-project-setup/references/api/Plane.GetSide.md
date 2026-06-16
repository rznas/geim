<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Plane.GetSide.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is a point on the positive side of the plane?

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Plane goalLine1;
    public Plane goalLine2;
    public Plane leftSideLine;
    public Plane rightSideLine;    int GoalScored(Vector3 ballPos)
    {
        // If the ball is within the sidelines...
        if (!leftSideLine.GetSide(ballPos) && !rightSideLine.GetSide(ballPos))
        {
            // If the ball is over goal line 1 then it's a goal for team 1...
            if (goalLine1.GetSide(ballPos))
            {
                return 1;
            }
            // ...else if the ball is over goal line 2 then it's a goal for team 2.
            else if (goalLine2.GetSide(ballPos))
            {
                return 2;
            }
        }        // Otherwise, it isn't a goal for either team.
        return 0;
    }
}
```
