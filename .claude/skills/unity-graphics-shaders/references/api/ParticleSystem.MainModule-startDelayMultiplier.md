<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startDelayMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier for ParticleSystem.MainModule.startDelay in seconds.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall start delay multiplier.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private bool restart;
    public float hSliderValue = 0.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        if (restart)
        {
            ps.Stop();
            ps.Clear();            var main = ps.main;
            main.startDelayMultiplier = hSliderValue;            ps.Play();            restart = false;
        }
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 0.0F, 5.0F);
        restart = GUI.Button(new Rect(25, 75, 100, 30), "Restart");
    }
}
```
