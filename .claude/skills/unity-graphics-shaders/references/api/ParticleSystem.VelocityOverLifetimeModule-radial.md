<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.VelocityOverLifetimeModule-radial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Curve to control particle speed based on lifetime, away from a center position.

Additional resources: MinMaxCurve, ParticleSystem.VelocityOverLifetimeModule.orbitalOffsetX, ParticleSystem.VelocityOverLifetimeModule.orbitalOffsetY, ParticleSystem.VelocityOverLifetimeModule.orbitalOffsetZ.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueX = 0.0f;
    public float hSliderValueY = 0.0f;
    public float hSliderValueZ = 0.0f;
    public float hSliderValueRadial = 0.0f;
    public float hSliderValueOffset = 0.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        ps.transform.rotation = Quaternion.identity;        var main = ps.main;
        main.startSpeedMultiplier = 0.0f;        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Circle;
        shape.radius = 5.0f;        var velocityOverLifetime = ps.velocityOverLifetime;
        velocityOverLifetime.enabled = true;        var trails = ps.trails;
        trails.enabled = true;
        trails.widthOverTrailMultiplier = 0.1f;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = psr.material;
    }    void Update()
    {
        var velocityOverLifetime = ps.velocityOverLifetime;
        velocityOverLifetime.orbitalXMultiplier = hSliderValueX;
        velocityOverLifetime.orbitalYMultiplier = hSliderValueY;
        velocityOverLifetime.orbitalZMultiplier = hSliderValueZ;
        velocityOverLifetime.radialMultiplier = hSliderValueRadial;
        velocityOverLifetime.orbitalOffsetX = hSliderValueOffset;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "X");
        GUI.Label(new Rect(25, 80, 100, 30), "Y");
        GUI.Label(new Rect(25, 120, 100, 30), "Z");
        GUI.Label(new Rect(25, 160, 100, 30), "Radial");
        GUI.Label(new Rect(25, 200, 100, 30), "Offset");        hSliderValueX = GUI.HorizontalSlider(new Rect(85, 45, 100, 30), hSliderValueX, -5.0f, 5.0f);
        hSliderValueY = GUI.HorizontalSlider(new Rect(85, 85, 100, 30), hSliderValueY, -5.0f, 5.0f);
        hSliderValueZ = GUI.HorizontalSlider(new Rect(85, 125, 100, 30), hSliderValueZ, -5.0f, 5.0f);
        hSliderValueRadial = GUI.HorizontalSlider(new Rect(85, 165, 100, 30), hSliderValueRadial, -2.0f, 2.0f);
        hSliderValueOffset = GUI.HorizontalSlider(new Rect(85, 205, 100, 30), hSliderValueOffset, -5.0f, 5.0f);
    }
}
```
