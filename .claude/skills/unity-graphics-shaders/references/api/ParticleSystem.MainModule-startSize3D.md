<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startSize3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A flag to enable specifying particle size individually for each axis.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValueX = 1.0F;
    public float hSliderValueY = 1.0F;
    public float hSliderValueZ = 1.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSize3D = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.renderMode = ParticleSystemRenderMode.Mesh;
        psr.mesh = Resources.GetBuiltinResource<Mesh>("Cube.fbx");// use a mesh, because billboards have no Z axis size
        psr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var main = ps.main;
        main.startSizeXMultiplier = hSliderValueX;
        main.startSizeYMultiplier = hSliderValueY;
        main.startSizeZMultiplier = hSliderValueZ;
    }    void OnGUI()
    {
        hSliderValueX = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValueX, 0.0F, 360.0F * Mathf.Deg2Rad);
        hSliderValueY = GUI.HorizontalSlider(new Rect(25, 75, 100, 30), hSliderValueY, 0.0F, 360.0F * Mathf.Deg2Rad);
        hSliderValueZ = GUI.HorizontalSlider(new Rect(25, 105, 100, 30), hSliderValueZ, 0.0F, 360.0F * Mathf.Deg2Rad);
    }
}
```
