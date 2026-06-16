<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.ScriptPlayableBinding.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | A reference to a UnityEngine.Object that acts as a key for this binding. |
| type | The type of object that will be bound to the ScriptPlayableOutput. |
| name | The name of the ScriptPlayableOutput. |

### Returns

**PlayableBinding** Returns a PlayableBinding that contains information that is used to create a ScriptPlayableOutput.

### Description

Creates a PlayableBinding that contains information representing a ScriptPlayableOutput.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;public class CustomPlayableAsset : PlayableAsset
{
    public override Playable CreatePlayable(PlayableGraph graph, GameObject owner)
    {
        return Playable.Create(graph);
    }    public override IEnumerable<PlayableBinding> outputs
    {
        get { yield return ScriptPlayableBinding.Create("ScriptPlayableOutput", this, typeof(Renderer)); }
    }
}
```
