<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CollisionModule-colliderForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much force is applied to a Collider when hit by particles from this Particle System.

Additional resources: ParticleSystem.CollisionModule.multiplyColliderForceByParticleSize, ParticleSystem.CollisionModule.multiplyColliderForceByParticleSpeed, ParticleSystem.CollisionModule.multiplyColliderForceByCollisionAngle, ParticleSystem.collision.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 0.02F;
    public bool hToggleUseCollisionAngle = true;
    public bool hToggleUseSpeed = true;
    public bool hToggleUseSize = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSize = new ParticleSystem.MinMaxCurve(0.01f, 1.0f);        var collision = ps.collision;
        collision.enabled = true;
        collision.type = ParticleSystemCollisionType.World;
        collision.mode = ParticleSystemCollisionMode.Collision3D;        var collider = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        collider.transform.parent = ps.transform;
        collider.transform.localPosition = new Vector3(0.0f, 0.0f, 13.0f);
        collider.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);        var rb = collider.AddComponent<Rigidbody>();
        rb.isKinematic = false;
        rb.useGravity = false;
    }    void Update()
    {
        var collision = ps.collision;
        collision.colliderForce = hSliderValue;
        collision.multiplyColliderForceByCollisionAngle = hToggleUseCollisionAngle;
        collision.multiplyColliderForceByParticleSpeed = hToggleUseSpeed;
        collision.multiplyColliderForceByParticleSize = hToggleUseSize;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 40, 100, 30), hSliderValue, 0.0F, 1.0F);
        hToggleUseCollisionAngle = GUI.Toggle(new Rect(25, 80, 140, 30), hToggleUseCollisionAngle, "Use Collision Angle");
        hToggleUseSpeed = GUI.Toggle(new Rect(25, 120, 140, 30), hToggleUseSpeed, "Use Particle Speed");
        hToggleUseSize = GUI.Toggle(new Rect(25, 160, 140, 30), hToggleUseSize, "Use Particle Size");
    }
}
```
