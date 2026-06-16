<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-updateCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This counter is incremented when the Texture is updated.

Note: If you perform an update from the GPU side, you should increment the counter yourself. (For instance, when blitting into a RenderTexture). (see IncrementUpdateCount).

```csharp
using UnityEngine;
using System.Collections.Generic;public class MyTextureCache
{
    struct TextureCacheMeta
    {
        internal int index;
        internal uint updateCount;
    }    Dictionary<Texture, TextureCacheMeta> m_TextureMetas = new Dictionary<Texture, TextureCacheMeta>();
    RenderTexture m_Cache;    public Texture cache { get { return m_Cache; } }    public int CacheTexture(Texture Texture)
    {
        var index = -1;
        TextureCacheMeta meta;
        if (m_TextureMetas.TryGetValue(Texture, out meta))
        {
            if (meta.updateCount != Texture.updateCount)
            {
                // Texture has changed since last caching
                // So blit again into the cache Texture
                BlitTextureAt(meta.index, Texture);
                meta.updateCount = Texture.updateCount;
                m_TextureMetas[Texture] = meta;
            }
        }
        else
        {
            index = GetNextIndex();
            if (index < 0)
            {
                Debug.LogError("Invalid index");
                return -1;
            }            m_TextureMetas[Texture] = new TextureCacheMeta
            {
                index = index,
                updateCount = Texture.updateCount
            };
        }
        return index;
    }    void BlitTextureAt(int index, Texture Texture) { /* copy pixels in cache */ }
    int GetNextIndex() { return -1; /* Get next index to use in the cache */ }
}
```
