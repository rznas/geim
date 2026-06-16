<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-externalAcceleration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A constant, external acceleration applied to the cloth.

Use this to simulate constant forces on the cloth, such as wind waving a flag. Additional resources: Cloth.randomAcceleration.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Make this cloth fall at half speed (if is affected by gravity).
    void Start()
    {
        GetComponent<Cloth>().externalAcceleration =  -Physics.gravity / 2;
    }
}
```
