<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-prewarm.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If ParticleSystem.MainModule.loop is true, when you enable this property, the Particle System looks like it has already simulated for one loop when first becoming visible.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool usePrewarm;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.loop = true;   // prewarm only works on looping systems        Restart();
    }    void OnGUI()
    {
        bool newPrewarm = GUI.Toggle(new Rect(10, 60, 200, 30), usePrewarm, "Use Prewarm");        if (newPrewarm != usePrewarm)
        {
            usePrewarm = newPrewarm;
            Restart();
        }
    }    void Restart()
    {
        ps.Stop();
        ps.Clear();        var main = ps.main;
        main.prewarm = usePrewarm;        ps.Play();
    }
}
```
