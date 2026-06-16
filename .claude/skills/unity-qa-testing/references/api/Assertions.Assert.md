<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Assert class contains assertion methods for setting invariants in the code.

All method calls will be conditionally included only in a development build, unless specified explicitly. See BuildOptions.ForceEnableAssertions. The inclusion of an assertion is controlled by the `UNITY_ASSERTIONS` define.

 Assert throws exceptions whenever an assertion fails.

 If a debugger is attached to the project (System.Diagnostics.Debugger.IsAttached is true), AssertionException is thrown to pause the execution and invoke the debugger.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    public int health;
    public GameObject go;    void Update()
    {
        // You expect the health never to be equal to zero
        Assert.AreNotEqual(0, health);        // The referenced GameObject should be always (in every frame) be active
        Assert.IsTrue(go.activeInHierarchy);
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| AreApproximatelyEqual | Assert the values are approximately equal. |
| AreEqual | Assert that the values are equal. |
| AreNotApproximatelyEqual | Asserts that the values are approximately not equal. |
| AreNotEqual | Assert that the values are not equal. |
| IsFalse | Return true when the condition is false. Otherwise return false. |
| IsNotNull | Assert that the value is not null. |
| IsNull | Assert the value is null. |
| IsTrue | Asserts that the condition is true. |
