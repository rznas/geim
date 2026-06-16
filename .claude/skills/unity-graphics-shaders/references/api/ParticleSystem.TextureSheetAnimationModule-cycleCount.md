<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-cycleCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how many times the animation loops during the lifetime of the particle.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float cycleCount = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.numTilesX = 4;
        tex.numTilesY = 2;
    }    void Update()
    {
        var tex = ps.textureSheetAnimation;
        tex.cycleCount = (int)cycleCount;
    }    void OnGUI()
    {
        cycleCount = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), cycleCount, 0.1f, 5.0f);
    }
}
```
