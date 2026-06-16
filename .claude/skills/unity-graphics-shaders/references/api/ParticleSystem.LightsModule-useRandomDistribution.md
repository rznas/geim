<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LightsModule-useRandomDistribution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Randomly assign Lights to new particles based on ParticleSystem.LightsModule.ratio.

When this property is false, the system assigns Lights at regular intervals according to the ParticleSystem.LightsModule.ratio.

```csharp
using UnityEngine;
using System.Collections;// For best results, use Deferred Rendering (see Camera settings)
[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public Light lightPrefab;     // Provide a light Prefab in the inspector
    public float hSliderValueRatio = 1.0f;
    public float hSliderValueMax = 1000.0f;
    public bool randomDistribution = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        ps.transform.localRotation = Quaternion.Euler(0.0f, 0.0f, 45.0f);        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.Circle;        var lights = ps.lights;
        lights.enabled = true;
        lights.light = lightPrefab;        // plane to receive lights
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
        lights.ratio = hSliderValueRatio;
        lights.maxLights = (int)hSliderValueMax;
        lights.useRandomDistribution = randomDistribution;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Ratio");
        GUI.Label(new Rect(25, 80, 100, 30), "Max Lights");        hSliderValueRatio = GUI.HorizontalSlider(new Rect(95, 45, 100, 30), hSliderValueRatio, 0.0f, 1.0f);
        hSliderValueMax = GUI.HorizontalSlider(new Rect(95, 85, 100, 30), hSliderValueMax, 0.0f, 500.0f);        randomDistribution = GUI.Toggle(new Rect(25, 125, 400, 30), randomDistribution, "Randomly assign Lights to Particles instead of evenly distributing them.");
    }
}
```
