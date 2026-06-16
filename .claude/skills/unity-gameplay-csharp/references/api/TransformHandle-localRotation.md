<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle-localRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rotation of the transform relative to the transform rotation of the parent.

Unity stores rotations as Quaternions internally. To rotate an object, use TransformHandle.Rotate. Use TransformHandle.localEulerAngles for modifying the rotation as euler angles.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        TransformHandle thisTransformHandle = transformHandle;
        thisTransformHandle.localRotation = Quaternion.identity;
    }
}
```

Another example:

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// Rotate a cylinder around the x and z axes. Switch from one to the other
// when the rotation in the current axis reaches 360 degrees.public class ExampleScript : MonoBehaviour
{
    private float x;
    private float z;
    private bool rotateX;
    private float rotationSpeed;    void Start()
    {
        x = 0.0f;
        z = 0.0f;
        rotateX = true;
        rotationSpeed = 75.0f;
    }    void FixedUpdate()
    {
        if (rotateX == true)
        {
            x += Time.deltaTime * rotationSpeed;            if (x > 360.0f)
            {
                x = 0.0f;
                rotateX = false;
            }
        }
        else
        {
            z += Time.deltaTime * rotationSpeed;            if (z > 360.0f)
            {
                z = 0.0f;
                rotateX = true;
            }
        }        TransformHandle thisTransformHandle = transformHandle;
        thisTransformHandle.localRotation = Quaternion.Euler(x, 0, z);
    }
}
```
