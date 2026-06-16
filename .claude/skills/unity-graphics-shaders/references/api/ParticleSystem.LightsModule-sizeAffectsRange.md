<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LightsModule-sizeAffectsRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Toggle whether the system multiplies the particle size by the light range to determine the final light range.

This is useful for shrinking light influence at the same time as particles disappear, to avoid popping.

```csharp
using UnityEngine;
using System.Collections;// For best results, use Deferred Rendering (see Camera settings)
[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public Light lightPrefab;     // Provide a light Prefab in the inspector (eg a default Point Light)
    public float hSliderValueSize = 1.0f;
    public bool sizeAffectsRange = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        ps.transform.localRotation = Quaternion.Euler(0.0f, 0.0f, 45.0f);        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Circle;        var lights = ps.lights;
        lights.enabled = true;
        lights.light = lightPrefab;
        lights.ratio = 1.0f;
        lights.maxLights = 1000;        // plane to receive lights
        var plane = GameObject.CreatePrimitive(PrimitiveType.Plane);
        plane.transform.parent = ps.transform;
        plane.transform.localPosition = new Vector3(0.0f, 0.0f, 3.0f);
        plane.transform.localScale = new Vector3(20.0f, 20.0f, 20.0f);
        plane.transform.localRotation = Quaternion.Euler(-90.0f, 0.0f, 0.0f);        var material = new Material(Shader.Find("Standard"));
        material.color = new Color(0.1f, 0.1f, 0.1f, 1.0f);
        plane.GetComponent<MeshRenderer>().material = material;
    }    void Update()
    {
        var lights = ps.lights;
        lights.sizeAffectsRange = sizeAffectsRange;        var main = ps.main;
        main.startSize = hSliderValueSize;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Size");        hSliderValueSize = GUI.HorizontalSlider(new Rect(95, 45, 100, 30), hSliderValueSize, 0.0f, 1.0f);
        sizeAffectsRange = GUI.Toggle(new Rect(25, 85, 200, 30), sizeAffectsRange, "Particle Size Affects Light Range");
    }
}
```
