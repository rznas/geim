<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlasManager-atlasRegistered.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Trigger when a SpriteAtlas is registered via invoking the callback in SpriteAtlasManager.atlasRequested.

```csharp
using UnityEngine;
using UnityEngine.U2D;public class AtlasRegistrationListener : MonoBehaviour
{
    void OnEnable()
    {
        SpriteAtlasManager.atlasRegistered += AtlasRegistered;
    }    void OnDisable()
    {
        SpriteAtlasManager.atlasRegistered -= AtlasRegistered;
    }    void AtlasRegistered(SpriteAtlas spriteAtlas)
    {
        Debug.LogFormat("Registered {0}.", spriteAtlas.name);
    }
}
```

Additional resources: SpriteAtlasManager.atlasRegistered.
