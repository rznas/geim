<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CollisionModule.SetPlane.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The plane entry to set. |
| transform | The plane to collide particles against. |

### Description

Set a collision plane to use with this Particle System.

If the index is greater than the number of planes currently assigned to the Particle System, Unity adds empty entries to ensure the list is large enough.

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
        collider.transform.localRotation = Quaternion.Euler(new Vector3(-90.0f, 0.0f, 0.0f));        collision.SetPlane(0, collider.transform);
    }
}
```
