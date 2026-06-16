<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemAnimationMode.Sprites.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a list of sprites to construct a sequence of animation frames.

Defines the sprites that are added to Texture Sheet Animation.

Additional resources: ParticleSystemAnimationMode.Grid

```csharp
using UnityEngine;// A particle sprite example.
// The gameobject this script is attached to must have the
// ParticleSystem attached.  The TextureSheetAnimation mode
// is set to Sprites.  This script adds a single texture to
// the ParticleSystem.[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public Texture2D tex;
    private ParticleSystem ps;
    private Sprite sprite;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        sprite = Sprite.Create(tex, new Rect(0.0f, 0.0f, tex.width, tex.height), Vector2.zero);        var textureSheetAnimation = ps.textureSheetAnimation;
        textureSheetAnimation.enabled = true;
        textureSheetAnimation.mode = ParticleSystemAnimationMode.Sprites;
        textureSheetAnimation.AddSprite(sprite);
    }
}
```
