<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomYieldInstruction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for custom yield instructions to suspend coroutines.

Inherit from `CustomYieldInstruction` to create custom yield instructions that suspend coroutine execution until a specified event happens.

The keepWaiting property determines whether the coroutine must keep waiting or can resume execution. Unity queries keepWaiting each frame after MonoBehaviour.Update and before MonoBehaviour.LateUpdate. To keep the coroutine suspended, return `true`. To resume execution, return `false`

```csharp
// Example showing how a CustomYieldInstruction script file
// can be used.  This waits for the left button to go up and then
// waits for the right button to go down.
using System.Collections;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Update()
    {
        if (Input.GetMouseButtonUp(0))
        {
            Debug.Log("Left mouse button up");
            StartCoroutine(waitForMouseDown());
        }
    }    public IEnumerator waitForMouseDown()
    {
        yield return new WaitForMouseDown();
        Debug.Log("Right mouse button pressed");
    }
}
```

The following script implements the overridable version of `keepWaiting`:

```csharp
using UnityEngine;public class WaitForMouseDown : CustomYieldInstruction
{
    public override bool keepWaiting
    {
        get
        {
            return !Input.GetMouseButtonDown(1);
        }
    }    public WaitForMouseDown()
    {
        Debug.Log("Waiting for Mouse right button down");
    }
}
```

```csharp
using System.Collections;
using UnityEngine;
using System;// Implementation of WaitWhile yield instruction. This can be later used as:
// yield return new WaitWhile(() => Princess.isInCastle);
class WaitWhile1 : CustomYieldInstruction
{
    Func<bool> m_Predicate;    public override bool keepWaiting { get { return m_Predicate(); } }    public WaitWhile1(Func<bool> predicate) { m_Predicate = predicate; }
}
```

To have more control and implement more complex yield instructions you can inherit directly from the `System.Collections.IEnumerator` class. In this case, implement the `MoveNext` method as you would implement the keepWaiting property. You can also return an object in the `Current` property, which is processed by Unity's coroutine scheduler after executing `MoveNext`. For example, if `Current` returns another object inheriting from `IEnumerator`, then the current enumerator is suspended until the returned one has completed.

```csharp
using System;
using System.Collections;// Same WaitWhile implemented by inheriting from IEnumerator.
class WaitWhile2 : IEnumerator
{
    Func<bool> m_Predicate;    public object Current { get { return null; } }    public bool MoveNext() { return m_Predicate(); }    public void Reset() {}    public WaitWhile2(Func<bool> predicate) { m_Predicate = predicate; }
}
```

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
