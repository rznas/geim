<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileAnimationEntityIdData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A struct for the required data for animating a Tile.

This is similar to TileAnimationData except it uses EntityIds instead of managed object references.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public struct AnimatedEntityIdData
    {
        public TileData m_TileData;        public NativeArray<EntityId> m_AnimatedSpriteEntityIds;
        public float m_Speed;
        public float m_AnimationStartTime;
        public TileAnimationFlags m_TileAnimationFlags;        public void Dispose()
        {
            if (m_AnimatedSpriteEntityIds.IsCreated)
                m_AnimatedSpriteEntityIds.Dispose();
        }
    }    static unsafe void GetTileAnimationEntityIdDataJob(int count, Vector3Int* position, ref AnimatedEntityIdData tileAnimationData, TileAnimationEntityIdData* outTilemapAnimationEntityIdData)
    {
        for (var i = 0; i < count; ++i)
        {
            ref TileAnimationEntityIdData outTilemapAnimationData = ref *(outTilemapAnimationEntityIdData + i);
            if (tileAnimationData.m_AnimatedSpriteEntityIds.IsCreated)
                outTilemapAnimationData.animatedSpritesEntityIds = tileAnimationData.m_AnimatedSpriteEntityIds;
            outTilemapAnimationData.animationSpeed = tileAnimationData.m_Speed;
            outTilemapAnimationData.animationStartTime = tileAnimationData.m_AnimationStartTime;
            outTilemapAnimationData.flags = tileAnimationData.m_TileAnimationFlags;
        }
    }
}
```

The example above shows how you can copy a Tile's animation data to be passed to a Tilemap.

### Properties

| Property | Description |
| --- | --- |
| animatedSpritesEntityIds | The array of the Entityids of sprites, ordered by appearance in the animation. |
| animationSpeed | The animation speed. |
| animationStartTime | The start time of the animation. The animation will begin at this time offset. |
| flags | TileAnimationFlags for controlling the Tile animation. |
