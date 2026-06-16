<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.CollisionModule-dampen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much speed does each particle lose after a collision.

Additional resources: ParticleSystem.collision, MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 0.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var collision = ps.collision;
        collision.enabled = true;
        collision.type = ParticleSystemCollisionType.World;
        collision.mode = ParticleSystemCollisionMode.Collision3D;        var collider = GameObject.CreatePrimitive(PrimitiveType.Sphere);
        collider.transform.parent = ps.transform;
        collider.transform.localPosition = new Vector3(0.0f, 0.0f, 13.0f);
        collider.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);
    }    void Update()
    {
        var collision = ps.collision;
        collision.dampen = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 40, 100, 30), hSliderValue, 0.0F, 1.0F);
    }
}
```
