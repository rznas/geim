<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Must.MustExtensions.MustBeFalse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An extension method for Assert.IsFalse.

```csharp
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.Assertions.Must;public class AssertionExampleClass : MonoBehaviour
{
    GameObject go;
    void Update()
    {
        //Make sure the Game Object is never in active state
        go.activeSelf.MustBeFalse();
    }
}
```
