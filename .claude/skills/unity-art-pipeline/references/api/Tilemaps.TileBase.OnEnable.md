<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TileBase.OnEnable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the TileBase is loaded. Override this to initialize any data for the TileBase.

See ScriptableObject.OnEnable.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Tilemaps;public static class TilemapExample
{
    public class AnimatedEntityIdTile : Tile
    {
        public struct AnimatedEntityIdData
        {
            public TileData m_TileData;            public NativeArray<EntityId> m_AnimatedSpriteEntityIds;
            public float m_Speed;
            public float m_AnimationStartTime;
            public TileAnimationFlags m_TileAnimationFlags;            public void Dispose()
            {
                if (m_AnimatedSpriteEntityIds.IsCreated)
                    m_AnimatedSpriteEntityIds.Dispose();
            }
        }        private AnimatedEntityIdData m_AnimatedEntityIdData;
        private Sprite[] m_AnimatedSprites;
        private float m_Speed;
        private float m_AnimationStartTime;
        private TileAnimationFlags m_TileAnimationFlags;        public override void OnEnable()
        {
            base.OnEnable();            m_AnimatedEntityIdData.m_TileData = new TileData()
            {
                sprite = this.sprite,
                color = this.color,
                transform = this.transform,
                gameObject = this.gameObject,
                colliderType = this.colliderType,
                flags = this.flags,
            };
            if (m_AnimatedSprites != null && m_AnimatedSprites.Length > 0)
            {
                m_AnimatedEntityIdData.m_AnimatedSpriteEntityIds = new NativeArray<EntityId>(m_AnimatedSprites.Length, Allocator.Persistent);
                for (var i = 0; i < m_AnimatedSprites.Length; i++)
                {
                    m_AnimatedEntityIdData.m_AnimatedSpriteEntityIds[i] = m_AnimatedSprites[i] != null ? m_AnimatedSprites[i].GetEntityId() : EntityId.None;
                }
            }
            m_AnimatedEntityIdData.m_Speed = this.m_Speed;
            m_AnimatedEntityIdData.m_AnimationStartTime = this.m_AnimationStartTime;
            m_AnimatedEntityIdData.m_TileAnimationFlags = this.m_TileAnimationFlags;
        }        public override void OnDisable()
        {
            m_AnimatedEntityIdData.Dispose();            base.OnDisable();
        }
    }
}
```

The example overrides OnEnable to initialize data for a scripted TileBase.
