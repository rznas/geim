<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startSizeZ.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The initial size of particles along the z-axis when the Particle System first spawns them.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSize3D = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.renderMode = ParticleSystemRenderMode.Mesh;
        psr.mesh = Resources.GetBuiltinResource<Mesh>("Cube.fbx");// use a mesh, because billboards have no Z axis size
        psr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var main = ps.main;
        main.startSizeZ = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 0.0F, 10.0F);
    }
}
```
