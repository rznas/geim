<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CollisionModule.AddPlane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The plane to add. |

### Description

Adds a collision plane to use with this Particle System.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var collision = ps.collision;
        collision.enabled = true;
        collision.type = ParticleSystemCollisionType.Planes;
        collision.mode = ParticleSystemCollisionMode.Collision3D;        var collider = GameObject.CreatePrimitive(PrimitiveType.Plane);
        collider.transform.parent = ps.transform;
        collider.transform.localPosition = new Vector3(0.0f, 0.0f, 5.0f);
        collider.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);
        collider.transform.localRotation = Quaternion.Euler(new Vector3(-90.0f, 0.0f, 0.0f));        collision.AddPlane(collider.transform);
    }
}
```
