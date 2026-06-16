<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileBase.GetTileAnimationData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Position of the Tile on the Tilemap. |
| tilemap | The Tilemap the tile is present on. |
| tileAnimationData | Data to run an animation on the tile. |

### Returns

**bool** Whether the call was successful.

### Description

Retrieves any tile animation data from the scripted tile.

Implement this and fill in the TileAnimationData to have the Tilemap run an animation for the tile.

```csharp
using UnityEngine;
using UnityEngine.Tilemaps;// Tile that plays an animated loops of sprites
[CreateAssetMenu]
public class AnimatedTile : TileBase
{
    public Sprite[] m_AnimatedSprites;
    public float m_AnimationSpeed = 1f;
    public float m_AnimationStartTime;    public override void GetTileData(Vector3Int location, ITilemap tileMap, ref TileData tileData)
    {
        if (m_AnimatedSprites != null && m_AnimatedSprites.Length > 0)
        {
            tileData.sprite = m_AnimatedSprites[m_AnimatedSprites.Length - 1];
        }
    }    public override bool GetTileAnimationData(Vector3Int location, ITilemap tileMap, ref TileAnimationData tileAnimationData)
    {
        if (m_AnimatedSprites != null && m_AnimatedSprites.Length > 0)
        {
            tileAnimationData.animatedSprites = m_AnimatedSprites;
            tileAnimationData.animationSpeed = m_AnimationSpeed;
            tileAnimationData.animationStartTime = m_AnimationStartTime;
            return true;
        }
        return false;
    }
}
```
