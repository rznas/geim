<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startDelay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Start delay in seconds.

Use this to delay when the playback starts on the system. Additional resources: MinMaxCurve.

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
            main.startDelay = hSliderValue;            ps.Play();            restart = false;
        }
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 0.0F, 5.0F);
        restart = GUI.Button(new Rect(25, 75, 100, 30), "Restart");
    }
}
```
