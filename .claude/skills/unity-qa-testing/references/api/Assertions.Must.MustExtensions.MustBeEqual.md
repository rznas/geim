<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Must.MustExtensions.MustBeEqual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An extension method for Assert.AreEqual.

```csharp
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.Assertions.Must;public class AssertionExampleClass : MonoBehaviour
{
    void Update()
    {
        //Make sure the Game Object is always tagged as "Player"
        gameObject.tag.MustBeEqual("Player");
    }
}
```
