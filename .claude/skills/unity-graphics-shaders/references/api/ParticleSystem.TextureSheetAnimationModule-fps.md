<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-fps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control how quickly the animation plays.

The system uses this property when ParticleSystem.TextureSheetAnimationModule.timeMode is set to FPS.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float fps = 30.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.timeMode = ParticleSystemAnimationTimeMode.FPS;
        tex.numTilesX = 4;
        tex.numTilesY = 2;
    }    void Update()
    {
        var tex = ps.textureSheetAnimation;
        tex.fps = fps;
    }    void OnGUI()
    {
        GUI.Label(new Rect(25, 20, 100, 30), "FPS");        fps = GUI.HorizontalSlider(new Rect(125, 25, 100, 30), fps, 1.0f, 60.0f);
    }
}
```
