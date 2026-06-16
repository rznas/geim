<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite.GetSecondaryTextureCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** Returns the number of Secondary Textures that the Sprite is using.

### Description

Gets the number of Secondary Textures that the Sprite is using.

```csharp
using UnityEngine;// Create a Sprite with Secondary Texture properties and retrieves the total number of
// Secondary Texture properties the Sprite has.public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        var texture = new Texture2D(64, 64);
        var secondaryTexture1 = new Texture2D(64, 64);
        var secondaryTexture2 = new Texture2D(64, 64);
        var secondaryTexture3 = new Texture2D(64, 64);
        var secondarySpriteTexture = new[]
        {
            new SecondarySpriteTexture()
            {
                name = "_SecondaryTexture1",
                texture = secondaryTexture1
            },
            new SecondarySpriteTexture()
            {
                name = "_SecondaryTexture2",
                texture = secondaryTexture2
            },
            new SecondarySpriteTexture()
            {
                name = "_SecondaryTexture3",
                texture = secondaryTexture3
            }
        };        var sprite = Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height), Vector2.zero, 100, 0, SpriteMeshType.FullRect, Vector4.zero, false, secondarySpriteTexture);
        int spriteSecondaryTextureCount = sprite.GetSecondaryTextureCount();
        // This will print 3 since there are 3 Secondary Texture properties in the Sprite.
        print(spriteSecondaryTextureCount);
    }
}
```
