<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.CreatePrimitive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of primitive object to create, specified as a member of the PrimitiveType enum. |

### Description

Creates a GameObject of the specified PrimtiveType with a mesh renderer and appropriate collider.

For `CreatePrimitive` to succeed at runtime, your project must reference the following components:

- MeshFilter
- MeshRenderer
- BoxCollider
- SphereCollider

To ensure you have the required references, declare private properties of these types to prevent them being stripped from the build. Your project must also reference the Default-Material. If it doesn't, the primitive object will be shown in pink to indicate the missing material.

For more information, refer to Primitive and placeholder objects in the Manual.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Create a plane, sphere and cube in the Scene.    void Start()
    {
        GameObject plane  = GameObject.CreatePrimitive(PrimitiveType.Plane);        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        cube.transform.position = new Vector3(0, 0.5f, 0);        GameObject sphere = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        sphere.transform.position = new Vector3(0, 1.5f, 0);        GameObject capsule = GameObject.CreatePrimitive(PrimitiveType.Capsule);
        capsule.transform.position = new Vector3(2, 1, 0);        GameObject cylinder = GameObject.CreatePrimitive(PrimitiveType.Cylinder);
        cylinder.transform.position = new Vector3(-2, 1, 0);
    }
}
```

Additional resources: PrimitiveType
