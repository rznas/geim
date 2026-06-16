<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-useUnscaledTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When true, use the unscaled delta time to simulate the Particle System. Otherwise, use the scaled delta time.

This is useful for playing effects whilst the game is paused and [[Time.timeScale] is set to zero.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0f;
    public bool useUnscaledTime = false;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var main = ps.main;
        main.useUnscaledTime = useUnscaledTime;        Time.timeScale = hSliderValue;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 40, 100, 30), "Time Scale");
        hSliderValue = GUI.HorizontalSlider(new Rect(105, 45, 100, 30), hSliderValue, 0.0F, 10.0F);
        useUnscaledTime = GUI.Toggle(new Rect(25, 75, 100, 30), useUnscaledTime, "Use Unscaled Time");
    }
}
```
