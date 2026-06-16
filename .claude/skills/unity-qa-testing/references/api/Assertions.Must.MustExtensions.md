<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Must.MustExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An extension class that serves as a wrapper for the Assert class.

The MustExtension class wraps the Assertion.Assert into a more readable and shorter syntax.

```csharp
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.Assertions.Must;public class ExampleClass : MonoBehaviour
{
    public int health;
    public GameObject go;
    void Update()
    {
        //This assertion
        Assert.AreNotEqual(0, health);
        //can be also written like this
        health.MustNotBeEqual(0);        //Same with this assertion
        Assert.IsTrue(go.activeInHierarchy);
        //can be also written like this
        go.activeInHierarchy.MustBeTrue();
    }
}
```
