<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.StartCoroutine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starts a coroutine.

The execution of a coroutine can be paused at any point using the `yield` statement. When a `yield` statement is used, the coroutine pauses execution and automatically resumes at the next frame. For more information, refer to Write and run coroutines in the manual.

Coroutines are useful for modeling behavior over several frames. The `StartCoroutine` method returns upon the first `yield return`, however you can also `yield` the result, which waits until the coroutine has finished execution. There is no guarantee coroutines end in the same order they started, even if they finish in the same frame.

Yielding of any type, including `null`, results in the execution coming back on a later frame, unless the coroutine is stopped or has completed. If the coroutine runs to completion without yielding (for example, if the `yield` statement is unreachable), `StartCoroutine` returns `null`.

To stop a coroutine, use MonoBehaviour.StopCoroutine or MonoBehaviour.StopAllCoroutines.

Additional resources: Coroutine, YieldInstruction

```csharp
// This example invokes a coroutine and continues executing the function in parallel.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{    private IEnumerator coroutine;    void Start()
    {
        // - After 0 seconds, prints "Starting 0.0"
        // - After 0 seconds, prints "Before WaitAndPrint Finishes 0.0"
        // - After 2 seconds, prints "WaitAndPrint 2.0"
        print("Starting " + Time.time);        // Start function WaitAndPrint as a coroutine.        coroutine = WaitAndPrint(2.0f);
        StartCoroutine(coroutine);        print("Before WaitAndPrint Finishes " + Time.time);
    }    // every 2 seconds perform the print()
    private IEnumerator WaitAndPrint(float waitTime)
    {
        while (true)
        {
            yield return new WaitForSeconds(waitTime);
            print("WaitAndPrint " + Time.time);
        }
    }
}
```

```csharp
// This example invokes a coroutine and waits until it is completed.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    IEnumerator Start()
    {
        // - After 0 seconds, prints "Starting 0.0"
        // - After 2 seconds, prints "WaitAndPrint 2.0"
        // - After 2 seconds, prints "Done 2.0"
        print("Starting " + Time.time);        // Start function WaitAndPrint as a coroutine. And wait until it is completed.
        // the same as yield return WaitAndPrint(2.0f);
        yield return StartCoroutine(WaitAndPrint(2.0f));
        print("Done " + Time.time);
    }    // suspend execution for waitTime seconds
    IEnumerator WaitAndPrint(float waitTime)
    {
        yield return new WaitForSeconds(waitTime);
        print("WaitAndPrint " + Time.time);
    }
}
```

### Description

Starts a coroutine named `methodName`.

In most cases it's preferable to use the version of `StartCoroutine` that accepts an `IEnumerator` parameter, because it has lower runtime overhead. However, `StartCoroutine` with a string `methodName` lets you use MonoBehaviour.StopCoroutine with a specific method name.

```csharp
// In this example we show how to invoke a coroutine using a string name and stop it.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    IEnumerator Start()
    {
        StartCoroutine(nameof(DoSomething), 2.0f);
        yield return new WaitForSeconds(1);
        StopCoroutine(nameof(DoSomething));
    }    IEnumerator DoSomething(float someParameter)
    {
        while (true)
        {
            print("DoSomething Loop");            // Yield execution of this coroutine and return to the main loop until next frame
            yield return null;
        }
    }
}
```

A coroutine can start another coroutine and the two can interoperate in several ways, including both coroutines running in parallel. Alternatively, one coroutine can stop the other while it continues itself. In the following example, one coroutine pauses as it starts another one. When the second coroutine finishes, it restarts the first one.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(coroutineA());
    }    IEnumerator coroutineA()
    {
        // wait for 1 second
        Debug.Log("coroutineA created");
        yield return new WaitForSeconds(1.0f);
        yield return StartCoroutine(coroutineB());
        Debug.Log("coroutineA running again");
    }    IEnumerator coroutineB()
    {
        Debug.Log("coroutineB created");
        yield return new WaitForSeconds(2.5f);
        Debug.Log("coroutineB enables coroutineA to run");
    }
}
```
