<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-flipV.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flip the V coordinate on particles, causing them to appear mirrored vertically.

Set between 0 and 1, where higher values mirror a higher proportion of particles, and a value of 1 mirrors all particles.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float flipU = 0.0f;
    public float flipV = 0.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.numTilesX = 4;
        tex.numTilesY = 2;
    }    void Update()
    {
        var tex = ps.textureSheetAnimation;
        tex.flipU = flipU;
        tex.flipV = flipV;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 100, 30), "Flip U Amount");
        GUI.Label(new Rect(25, 60, 100, 30), "Flip V Amount");        flipU = GUI.HorizontalSlider(new Rect(125, 25, 100, 30), flipU, 0.0f, 1.0f);
        flipV = GUI.HorizontalSlider(new Rect(125, 65, 100, 30), flipV, 0.0f, 1.0f);
    }
}
```
