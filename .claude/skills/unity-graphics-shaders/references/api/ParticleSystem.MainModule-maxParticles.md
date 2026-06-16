<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-maxParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of particles to emit.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public float hSliderValue = 0.0F;
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var main = ps.main;
        main.maxParticles = Mathf.RoundToInt(hSliderValue);
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), hSliderValue, 0.0F, 100.0F);
    }
}
```
