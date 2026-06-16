<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture.IncrementUpdateCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Increment the update counter.

Call this method when you update a Texture from the GPU side, or you want to explicitly increment the counter.

```csharp
using UnityEngine;public class RenderSomething
{
    RenderTexture m_RT;    void Awake()
    {
        m_RT = new RenderTexture(512, 512, 0);
    }    public void Render(Texture source)
    {
        Graphics.Blit(source, m_RT);
        // We updated the render target on the GPU, so increment the update counter
        m_RT.IncrementUpdateCount();
    }
}
```
