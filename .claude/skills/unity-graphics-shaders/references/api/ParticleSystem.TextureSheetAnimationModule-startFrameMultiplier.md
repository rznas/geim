<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-startFrameMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The starting frame multiplier.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall start frame multiplier.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float startFrame = 0.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.numTilesX = 4;
        tex.numTilesY = 2;
    }    void Update()
    {
        var tex = ps.textureSheetAnimation;
        tex.startFrameMultiplier = startFrame;
    }    void OnGUI()
    {
        startFrame = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), startFrame, 0.0f, 7.0f);
    }
}
```
