<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Ray-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a ray starting at `origin` along `direction`.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Create a ray from the transform position along the transform's z-axis
        Ray ray = new Ray(transform.position, transform.forward);
    }
}
```
