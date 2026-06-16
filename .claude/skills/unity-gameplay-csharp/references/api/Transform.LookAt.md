<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.LookAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | Object to point towards. |
| worldUp | Vector specifying the upward direction. |

### Description

Rotates the transform so the forward vector points at /target/'s current position.

Then it rotates the transform to point its up direction vector in the direction determined by the `worldUp` parameter. If you leave out the `worldUp` parameter, the function will use the world y axis. The up vector of the rotation will only match the `worldUp` vector if the forward direction is perpendicular to `worldUp`.

```csharp
using UnityEngine;
// This complete script can be attached to a camera to make it
// continuously point at another object.public class ExampleClass : MonoBehaviour
{
    public Transform target;    void Update()
    {
        // Rotate the camera every frame so it keeps looking at the target
        transform.LookAt(target);        // Same as above, but setting the worldUp parameter to Vector3.left in this example turns the camera on its side
        transform.LookAt(target, Vector3.left);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| worldPosition | Point to look at. |
| worldUp | Vector specifying the upward direction. |

### Description

Rotates the transform so the forward vector points at `worldPosition`.

Then it rotates the transform to point its up direction vector in the direction hinted at by the `worldUp` vector. If you leave out the `worldUp` parameter, the function will use the world y axis. The up vector of the rotation will only match the `worldUp` vector if the forward direction is perpendicular to `worldUp`.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        // Point the object at the world origin (0,0,0)
        transform.LookAt(Vector3.zero);
    }
}
```
