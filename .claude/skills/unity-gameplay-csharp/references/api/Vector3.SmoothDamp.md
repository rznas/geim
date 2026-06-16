<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.SmoothDamp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| current | The initial position. |
| target | The position to move towards. |
| currentVelocity | The initial velocity. This value is modified by the function each time it runs in the `Update` function. Pass this parameter as a reference value. |
| smoothTime | Approximately the time it will take to reach the target. A smaller value will reach the target faster. |
| maxSpeed | The maximum speed to reach in the motion. By default, there is no maximum speed. |
| deltaTime | The time between calls to this function. The default value is `Time.deltaTime`, such that `SmoothDamp` is called once per frame. |

### Description

Gradually changes a vector towards a desired goal over time.

The vector is smoothed by a spring-like damper function, such that the speed slows as it nears the target position. The motion doesn't overshoot the target position.

 A common use of this method is smoothing the motion of a follow camera.

```csharp
// This example creates a sphere and moves the attached GameObject to  
// just in front of the sphere. 
// Attach this example to a camera object to view the movement.
using UnityEngine;public class SmoothDampExample : MonoBehaviour{
    public float smoothTime = 15;
    public  Vector3 velocity = new Vector3(0,0,2);
    Vector3 targetPos;    void Start()
    {
        // Position the camera
        transform.position = new Vector3(0,3,-10);
        
        // Create a sphere in front and below the camera.
        Vector3 spherePos = this.transform.position + new Vector3(0,-3,20);
        GameObject sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        sphere.transform.position = spherePos;        // Set final camera target position to just in front of the sphere
        targetPos = spherePos - new Vector3(0,0,2);
    }    void Update()
    {
        // Smoothly move the camera towards that target position. The velocity 
        // decreases as the camera moves closer to the target position
        transform.position = Vector3.SmoothDamp(transform.position, targetPos, ref velocity, smoothTime);
    }
}
```
