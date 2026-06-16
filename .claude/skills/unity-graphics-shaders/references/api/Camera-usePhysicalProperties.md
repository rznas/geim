<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-usePhysicalProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable `usePhysicalProperties` to use physical camera properties to compute the field of view and the frustum.

The physical properties include the sensor size, lens shift, and focal length.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Camera cam = gameObject.GetComponent<Camera>();
        cam.usePhysicalProperties = true;
        cam.focalLength = 60f;
    }}
```
