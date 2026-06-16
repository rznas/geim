<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this cloth enabled?

This is the same as the checkbox next to the component label in the inspector. A disabled cloth component will not update it's physics simulation, so you can use this to suspend the simulation of cloth objects when they are not needed, as cloth simulation is a very CPU-intensive task.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        GetComponent<Cloth>().enabled = false;
    }
}
```
