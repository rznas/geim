<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.DrawLine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | Point in world space where the line should start. |
| end | Point in world space where the line should end. |
| color | Color of the line. |
| duration | How long the line should be visible for. |
| depthTest | Determines whether objects closer to the camera obscure the line. |

### Description

Draws a line between specified start and end points.

The line will be drawn in the Game view of the editor when the game is running and the gizmo drawing is enabled. The line will also be drawn in the Scene when it is visible in the Game view. Leave the game running and showing the line. Switch to the Scene view and the line will be visible.

The `duration` is the time (in seconds) for which the line will be visible after it is first displayed. A duration of zero shows the line for just one frame.

If `depthTest` is set to true then the line will be obscured by other objects in the Scene that are nearer to the camera.

**Note:** This is for debugging playmode only. Editor gizmos should be drawn with Gizmos.Drawline or Handles.DrawLine instead.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // draw a 5-unit white line from the origin for 2.5 seconds
        Debug.DrawLine(Vector3.zero, new Vector3(5, 0, 0), Color.white, 2.5f);
    }    private float q = 0.0f;    void FixedUpdate()
    {
        // always draw a 5-unit colored line from the origin
        Color color = new Color(q, q, 1.0f);
        Debug.DrawLine(Vector3.zero, new Vector3(0, 5, 0), color);
        q = q + 0.01f;        if (q > 1.0f)
        {
            q = 0.0f;
        }
    }
}
```

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Event callback example: Debug-draw all contact points and normals for 2 seconds.
    void OnCollisionEnter(Collision collision)
    {
        foreach (ContactPoint contact in collision.contacts)
        {
            Debug.DrawLine(contact.point, contact.point + contact.normal, Color.green, 2, false);
        }
    }
}
```
