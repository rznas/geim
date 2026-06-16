<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform-localScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The scale of the transform relative to the GameObjects parent.

The example below creates a sphere GameObject with a scale of (1,1,1). The application then changes the Transform.localScale from 1.0 down to 0.25 and back to 1.0 repeatedly.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class Example : MonoBehaviour
{
    private GameObject sphere;
    private Vector3 scaleChange, positionChange;    void Awake()
    {
        Camera.main.clearFlags = CameraClearFlags.SolidColor;        // Create a sphere at the origin.
        sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        sphere.transform.position = new Vector3(0, 0, 0);        // Create a plane and move down by 0.5.
        GameObject plane = GameObject.CreatePrimitive(PrimitiveType.Plane);
        plane.transform.position = new Vector3(0, -0.5f, 0);        // Change the floor color to blue.
        // The blue material is present in Resources and not created in this script.
        Renderer rend = plane.GetComponent<Renderer>();
        rend.material = Resources.Load<Material>("blue");        scaleChange = new Vector3(-0.01f, -0.01f, -0.01f);
        positionChange = new Vector3(0.0f, -0.005f, 0.0f);
    }    void Update()
    {
        sphere.transform.localScale += scaleChange;
        sphere.transform.position += positionChange;        // Move upwards when the sphere hits the floor or downwards
        // when the sphere scale extends 1.0f.
        if (sphere.transform.localScale.y < 0.1f || sphere.transform.localScale.y > 1.0f)
        {
            scaleChange = -scaleChange;
            positionChange = -positionChange;
        }
    }
}
```
