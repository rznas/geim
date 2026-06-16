<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug.DrawRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | Point in world space where the ray should start. |
| dir | Direction and length of the ray. |
| color | Color of the drawn line. |
| duration | How long the line will be visible for (in seconds). |
| depthTest | Determines whether objects closer to the camera obscure the line. |

### Description

Draws a line from `start` to `start` + `dir` in world coordinates.

The `duration` parameter determines how long the line will be visible after the frame it is drawn. If duration is 0 (the default) then the line is rendered 1 frame.

If `depthTest` is set to true then the line will be obscured by other objects in the Scene that are nearer to the camera.

The line will be drawn in the Scene view of the editor. If gizmo drawing is enabled in the game view, the line will also be drawn there.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Frame update example: Draws a 10 meter long green line from the position for 1 frame.
    void Update()
    {
        Vector3 forward = transform.TransformDirection(Vector3.forward) * 10;
        Debug.DrawRay(transform.position, forward, Color.green);
    }
}
```

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Event callback example: Debug-draw all contact points and normals for 2 seconds.
    void OnCollisionEnter(Collision collision)
    {
        Debug.DrawRay(collision.contacts[0].point, collision.contacts[0].normal, Color.green, 2, false);
    }
}
```
