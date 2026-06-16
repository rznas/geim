<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteAtlasManager-atlasRequested.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Trigger when any Sprite was bound to SpriteAtlas but couldn't locate the atlas asset during runtime.

This usually means the sprite was packed to an atlas which is not included in build

This callback does not expect an immediate response from the user. Instead, it passes on a System.Action. The user can load the atlas object later and use this System.Action to pass back the loaded atlas.

```csharp
using UnityEngine;
using UnityEngine.U2D;public class AtlasLoader : MonoBehaviour
{
    void OnEnable()
    {
        SpriteAtlasManager.atlasRequested += RequestAtlas;
    }    void OnDisable()
    {
        SpriteAtlasManager.atlasRequested -= RequestAtlas;
    }    void RequestAtlas(string tag, System.Action<SpriteAtlas> callback)
    {
        var sa = Resources.Load<SpriteAtlas>(tag);
        callback(sa);
    }
}
```

Additional resources: U2D.SpriteAtlasManager.
