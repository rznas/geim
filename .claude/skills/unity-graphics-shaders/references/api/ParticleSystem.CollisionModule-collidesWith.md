<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CollisionModule-collidesWith.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control which Layers this Particle System collides with.

Additional resources: LayerMask.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool layerToggle;
    private readonly int layer0 = 0;
    private readonly int layer1 = 1;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = Color.red;        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Sphere;        var collision = ps.collision;
        collision.enabled = true;
        collision.type = ParticleSystemCollisionType.World;
        collision.mode = ParticleSystemCollisionMode.Collision3D;
        collision.bounce = 0.0f;        var collider1 = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        collider1.transform.parent = ps.transform;
        collider1.transform.localPosition = new Vector3(0.0f, 0.0f, 13.0f);
        collider1.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);
        collider1.layer = layer0;        var collider2 = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        collider2.transform.parent = ps.transform;
        collider2.transform.localPosition = new Vector3(0.0f, 0.0f, -13.0f);
        collider2.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);
        collider2.layer = layer1;
    }    void Update()
    {
        var collision = ps.collision;
        collision.collidesWith = layerToggle ? (1 << layer0) : (1 << layer1);
    }    void OnGUI()
    {
        layerToggle = GUI.Toggle(new Rect(25, 40, 100, 30), layerToggle, "Toggle Layer");
    }
}
```
