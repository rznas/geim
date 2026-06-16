<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TrailModule-mode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Choose how the system generates the particle trails.

Additional resources: ParticleSystemTrailMode.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool ribbonMode = false;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startColor = new ParticleSystem.MinMaxGradient(Color.red, Color.yellow);
        main.startSize = 0.1f;
        main.startLifetime = 2.5f;
        main.gravityModifierMultiplier = 0.2f;        var trails = ps.trails;
        trails.enabled = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.trailMaterial = new Material(Shader.Find("Sprites/Default"));
    }    void Update()
    {
        var trails = ps.trails;
        trails.mode = ribbonMode ? ParticleSystemTrailMode.Ribbon : ParticleSystemTrailMode.PerParticle;
    }    void OnGUI()
    {
        ribbonMode = GUI.Toggle(new Rect(25, 25, 200, 30), ribbonMode, "Ribbon mode");
    }
}
```
