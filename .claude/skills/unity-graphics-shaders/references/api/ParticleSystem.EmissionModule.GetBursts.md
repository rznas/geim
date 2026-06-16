<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.EmissionModule.GetBursts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bursts | Array of bursts to fill. |

### Returns

**int** The number of bursts in the array.

### Description

Gets the burst array.

Additional resources: Burst, ParticleSystem.SetBursts.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 5.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var emission = ps.emission;
        emission.enabled = true;
        emission.SetBursts(new ParticleSystem.Burst[] { new ParticleSystem.Burst(0.0f, 100) });
    }    void Update()
    {
        var emission = ps.emission;
        ParticleSystem.Burst[] bursts = new ParticleSystem.Burst[emission.burstCount];
        emission.GetBursts(bursts);        var main = ps.main;
        bursts[0].minCount = bursts[0].maxCount = (short)hSliderValue;        emission.SetBursts(bursts);
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 5.0f, 200.0f);
    }
}
```
