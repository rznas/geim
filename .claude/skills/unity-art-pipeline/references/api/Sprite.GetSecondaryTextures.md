<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite.GetSecondaryTextures.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| secondaryTexture | The array of SecondarySpriteTexture to contain the Secondary Textures properties used by the Sprite. |

### Returns

**int** Returns the number of Secondary Textures properties retrieved.

### Description

Retrieves an array of SecondarySpriteTexture used by the Sprite.

If the size of the arrays passed in as parameters are less than the number of SecondarySpriteTexture used by the sprite, the arrays will not be resized and the results will be limited.

If the size of the arrays passed in as parameters are bigger than the number of SecondarySpriteTexture used by the sprite, the number of elements used in the array will be indicated by the return value of the method.

```csharp
using UnityEngine;// Create a Sprite with Secondary Texture properties and retrieves the
// Secondary Texture properties with various input parameter array length.public class ExampleClass : MonoBehaviour
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
        var secondarySpriteTextureResult = new SecondarySpriteTexture[2];
        var resultCount = sprite.GetSecondaryTextures(secondarySpriteTextureResult);
        // There are 3 Secondary Textures, but the array is only size of 2, so the entire array is used
        print(resultCount);
        for (var i = 0; i < resultCount; ++i)
        {
            // This will print
            //_SecondaryTexture1
            //_SecondaryTexture2
            print(secondarySpriteTextureResult[i].name);
        }        secondarySpriteTextureResult = new SecondarySpriteTexture[4];
        resultCount = sprite.GetSecondaryTextures(secondarySpriteTextureResult);
        // There are 3 Secondary Textures, but the array is only size of 4, so only 3 will be used
        print(resultCount);
        for (var i = 0; i < resultCount; ++i)
        {
            // This will print
            //_SecondaryTexture1
            //_SecondaryTexture2
            //_SecondaryTexture3
            print(secondarySpriteTextureResult[i].name);
        }
    }
}
```
