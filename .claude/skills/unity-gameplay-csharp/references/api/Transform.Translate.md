<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.Translate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| translation | The amount by which to move the Transform. |
| relativeTo | The coordinate system in which to apply the translation. |

### Description

Moves the transform along its x, y, and z axes by the values of the translation parameter's x, y, and z components respectively.

If `relativeTo` is left out or set to Space.Self the movement is applied relative to the transform's local axes. (the x, y and z axes shown when selecting the object inside the Scene View.) If `relativeTo` is Space.World the movement is applied relative to the world coordinate system.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        // Move the object forward along its z axis 1 unit/second.
        transform.Translate(Vector3.forward * Time.deltaTime);        // Move the object upward in world space 1 unit/second.
        transform.Translate(Vector3.up * Time.deltaTime, Space.World);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | The amount by which to move the Transform on the x-axis. |
| y | The amount by which to move the Transform on the y-axis. |
| z | The amount by which to move the Transform on the z-axis. |
| relativeTo | The coordinate system in which the translation is applied. |

### Description

Moves the transform by x along the x axis, y along the y axis, and z along the z axis.

If `relativeTo` is left out or set to Space.Self the movement is applied relative to the transform's local axes. (the x, y and z axes shown when selecting the object inside the Scene View.) If `relativeTo` is Space.World the movement is applied relative to the world coordinate system.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        // Move the object forward along its z axis 1 unit/second.
        transform.Translate(0, 0, Time.deltaTime);        // Move the object upward in world space 1 unit/second.
        transform.Translate(0, Time.deltaTime, 0, Space.World);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| translation | The amount by which to move the Transform. |
| relativeTo | Defines the coordinate system used for the translation. |

### Description

Moves the transform along its x, y, and z axes by the values of the translation parameter's x, y, and z components respectively.

The movement is applied relative to /relativeTo/'s local coordinate system. If `relativeTo` is null, the movement is applied relative to the world coordinate system.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        // Move the object to the right relative to the camera 1 unit/second.
        transform.Translate(Vector3.right * Time.deltaTime, Camera.main.transform);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | The amount by which to move the Transform on the x-axis. |
| y | The amount by which to move the Transform on the y-axis. |
| z | The amount by which to move the Transform on the z-axis. |
| relativeTo | Defines the coordinate system used for the translation. |

### Description

Moves the transform by x along the x axis, y along the y axis, and z along the z axis.

The movement is applied relative to /relativeTo/'s local coordinate system. If `relativeTo` is null, the movement is applied relative to the world coordinate system.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        // Move the object to the right relative to the camera 1 unit/second.
        transform.Translate(Time.deltaTime, 0, 0, Camera.main.transform);
    }
}
```
