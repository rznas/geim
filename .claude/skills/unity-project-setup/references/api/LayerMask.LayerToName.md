<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LayerMask.LayerToName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Given a layer number, returns the name of the layer as defined in either a Builtin or a User Layer in the Tags and Layers manager.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints the name of the layer 1        Debug.Log(LayerMask.LayerToName(1));
    }
}
```

**Note:** LayerToName takes an integer argument. This argument selects the name of Layer and returns it. The layers are listed in the inspector. As an example assume User Layer 13 has a string. This string can be accessed by calling LayerToName with the value 2^13, which is 8192.
