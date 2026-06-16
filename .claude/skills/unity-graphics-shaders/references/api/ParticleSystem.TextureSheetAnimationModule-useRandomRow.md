<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule-useRandomRow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a random row of the Texture sheet for each particle emitted.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool useRandomRow = true;
    public int row = 0;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startLifetimeMultiplier = 2.0f;        var tex = ps.textureSheetAnimation;
        tex.enabled = true;
        tex.numTilesX = 4;
        tex.numTilesY = 2;
        tex.animation = ParticleSystemAnimationType.SingleRow;
    }    void Update()
    {
        var tex = ps.textureSheetAnimation;
        tex.useRandomRow = useRandomRow;
        tex.rowIndex = row;
    }    void OnGUI()
    {
        useRandomRow = GUI.Toggle(new Rect(25, 20, 100, 30), useRandomRow, "Use Random Row");        if (useRandomRow == false)
        {
            GUI.Label(new Rect(25, 60, 100, 30), "Row Index");
            row = (int)GUI.HorizontalSlider(new Rect(125, 65, 100, 30), (float)row, 0.0f, 1.0f);
        }
    }
}
```
