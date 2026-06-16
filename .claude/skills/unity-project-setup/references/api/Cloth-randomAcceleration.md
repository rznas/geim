<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-randomAcceleration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A random, external acceleration applied to the cloth.

Use this to simulate randomly changing forces on the cloth, such as wind turbulences waving a flag. Additional resources: Cloth.externalAcceleration.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Simulate wind going trough the X axis.
    void Start()
    {
        GetComponent<Cloth>().randomAcceleration = new Vector3(10, 0, 0);
    }
}
```
