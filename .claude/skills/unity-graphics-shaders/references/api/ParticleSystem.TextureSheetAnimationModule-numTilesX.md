<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-numTilesX.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the tiling of the Texture in the x-axis.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public ParticleSystemAnimationType animType;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.numTilesX = 4;
        tex.numTilesY = 2;
    }    void Update()
    {
        var tex = ps.textureSheetAnimation;
        tex.animation = animType;
    }    void OnGUI()
    {
        animType = (ParticleSystemAnimationType)GUI.SelectionGrid(new Rect(25, 25, 300, 30), (int)animType, new GUIContent[] { new GUIContent("WholeSheet"), new GUIContent("SingleRow") }, 2);
    }
}
```
