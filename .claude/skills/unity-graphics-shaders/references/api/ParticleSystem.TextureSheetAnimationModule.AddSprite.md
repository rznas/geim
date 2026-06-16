<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.TextureSheetAnimationModule.AddSprite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprite | The Sprite to be added. |

### Description

Add a new Sprite.

Additional resources: ParticleSystem.TextureSheetAnimationModule.RemoveSprite.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    private Sprite sprite;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        sprite = Sprite.Create(Texture2D.whiteTexture, new Rect(0, 0, 1, 1), Vector2.zero);        var textureSheetAnimation = ps.textureSheetAnimation;
        textureSheetAnimation.enabled = true;
        textureSheetAnimation.mode = ParticleSystemAnimationMode.Sprites;
        textureSheetAnimation.AddSprite(sprite);
    }
}
```
