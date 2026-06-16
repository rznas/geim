<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LayerMask.NameToLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Given a layer name, returns the layer index as defined by either a Builtin or a User Layer in the Tags and Layers manager.

Returns -1 if not found.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Debug.Log(LayerMask.NameToLayer("TransparentFX"));
    }
}
```
