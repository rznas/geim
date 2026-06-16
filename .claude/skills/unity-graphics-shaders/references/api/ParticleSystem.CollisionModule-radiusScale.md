<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CollisionModule-radiusScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier that Unity applies to the size of each particle before collisions are processed.

Useful for improving the visual accuracy of collisions, for example when there is an alpha border in the particle texture. Additional resources: ParticleSystem.collision.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 8.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var collision = ps.collision;
        collision.enabled = true;
        collision.type = ParticleSystemCollisionType.World;
        collision.mode = ParticleSystemCollisionMode.Collision3D;
        collision.dampen = 1.0f;        var collider = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        collider.transform.parent = ps.transform;
        collider.transform.localPosition = new Vector3(0.0f, 0.0f, 13.0f);
        collider.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);
    }    void Update()
    {
        var collision = ps.collision;
        collision.radiusScale = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 40, 100, 30), hSliderValue, 0.0F, 2.0F);
    }
}
```
