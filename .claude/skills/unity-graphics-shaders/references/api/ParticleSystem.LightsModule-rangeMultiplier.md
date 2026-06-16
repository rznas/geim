<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LightsModule-rangeMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Range multiplier.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall range multiplier. Additional resources: ParticleSystem.LightsModule.range.

```csharp
using UnityEngine;
using System.Collections;// For best results, use Deferred Rendering (see Camera settings)
[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public Light lightPrefab;     // Provide a light Prefab in the inspector (eg a default Point Light)
    public float hSliderValueIntensity = 1.0f;
    public float hSliderValueRange = 1.0f;    void Start()
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
        lights.intensityMultiplier = hSliderValueIntensity;
        lights.rangeMultiplier = hSliderValueRange;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Intensity");
        GUI.Label(new Rect(25, 80, 100, 30), "Range");
        hSliderValueIntensity = GUI.HorizontalSlider(new Rect(95, 45, 100, 30), hSliderValueIntensity, 0.0f, 10.0f);
        hSliderValueRange = GUI.HorizontalSlider(new Rect(95, 85, 100, 30), hSliderValueRange, 0.0f, 10.0f);
    }
}
```
