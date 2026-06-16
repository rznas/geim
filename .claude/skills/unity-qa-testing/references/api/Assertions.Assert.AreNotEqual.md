<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assertions.Assert.AreNotEqual.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| expected | The assumed Assert value. |
| actual | The exact Assert value. |
| message | The string used to describe the Assert. |
| comparer | Method to compare `expected` and `actual` arguments have the same value. |

### Description

Assert that the values are not equal.

Show message when the `expected` and `actual` are equal.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class AssertionExampleClass : MonoBehaviour
{
    void Update()
    {
        // Make sure the Game Object's layer is never set to 0
        Assert.AreNotEqual(0, gameObject.layer);
    }
}
```

Another example:

```csharp
using UnityEngine;
using UnityEngine.Assertions;// Assert.AreEqual and Assert.AreNotEqual example
//
// Compare 32 to 32. AreNotEqual prints message.
// Compare 32 to 33. AreEqual prints message.public class Example : MonoBehaviour
{
    void Start()
    {
        int expectedInt = 32;
        int actualInt = 32;        // Do not show message (32 is equal to 32).
        Assert.AreEqual(expectedInt, actualInt, "AreEqual: " + expectedInt + " equals " + actualInt);        // Show message (32 is equal to 32).
        Assert.AreNotEqual(expectedInt, actualInt, "AreNotEqual: " + expectedInt + " not equal to " + actualInt);        actualInt = 33;        // Show message (32 is not equal to 33).
        Assert.AreEqual(expectedInt, actualInt, "AreEqual: " + expectedInt + " equals " + actualInt);        // Do not show message (32 is not equal to 33).
        Assert.AreNotEqual(expectedInt, actualInt, "AreNotEqual: " + expectedInt + " not equal to " + actualInt);
    }
}
```
