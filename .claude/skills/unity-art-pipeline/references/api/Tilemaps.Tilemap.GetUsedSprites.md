<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.Tilemap.GetUsedSprites.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator type used to allocate the memory for the SpriteArray. The default value is Allocator.Temp. |

### Returns

**SpriteArray** A SpriteArray containing the all unique Sprite assets used in the Tilemap.

### Description

Returns a SpriteArray containing the unique Sprite instances used in the Tilemap. The array is allocated using the given Allocator.

The Allocator must be either Allocator.Temp or Allocator.Persistent.

```csharp
// Retrieves all used Sprites from a Tilemap and prints out the Sprite names to console
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample1 : MonoBehaviour
{
    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        using var usedSprites = tilemap.GetUsedSprites(); // Will call SpriteArray.Dispose() once it is out of scope
        foreach (var sprite in usedSprites)
        {
            print(sprite.name);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| memoryLabel | Memory label used for profiling and tracking this memory allocation in Unity. |

### Returns

**SpriteArray** A SpriteArray containing the all unique Sprite assets used in the Tilemap.

### Description

Returns a SpriteArray containing the unique Sprite instances used in the Tilemap. The array is allocated using the given Allocator.

```csharp
// Retrieves all used Sprites from a Tilemap and prints out the Sprite names to console
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public class TilemapExample2 : MonoBehaviour
{
    static readonly MemoryLabel kMemoryLabel = new MemoryLabel("TilemapExample", "Get", Allocator.Domain);    void Start()
    {
        Tilemap tilemap = GetComponent<Tilemap>();
        using var usedSprites = tilemap.GetUsedSprites(kMemoryLabel); // Will call SpriteArray.Dispose() once it is out of scope
        foreach (var sprite in usedSprites)
        {
            print(sprite.name);
        }
    }
}
```
