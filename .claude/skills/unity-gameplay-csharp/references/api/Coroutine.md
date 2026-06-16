<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Coroutine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

MonoBehaviour.StartCoroutine returns a Coroutine. Instances of this class are only used to reference these coroutines, and do not hold any exposed properties or functions.

A coroutine is a function that can suspend its execution (yield) until the given YieldInstruction finishes.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    IEnumerator WaitAndPrint()
    {
        // suspend execution for 5 seconds
        yield return new WaitForSeconds(5);
        print("WaitAndPrint " + Time.time);
    }    IEnumerator Start()
    {
        print("Starting " + Time.time);        // Start function WaitAndPrint as a coroutine
        yield return StartCoroutine("WaitAndPrint");
        print("Done " + Time.time);
    }
}
```

This example shows a normal Start:

```csharp
using UnityEngine;
using System.Collections;// In this example we show how to invoke a coroutine and execute
// the function in parallel.  Start does not need IEnumerator.public class ExampleClass : MonoBehaviour
{
    private IEnumerator coroutine;    void Start()
    {
        // - After 0 seconds, prints "Starting 0.0 seconds"
        // - After 0 seconds, prints "Coroutine started"
        // - After 2 seconds, prints "Coroutine ended: 2.0 seconds"
        print("Starting " + Time.time + " seconds");        // Start function WaitAndPrint as a coroutine.        coroutine = WaitAndPrint(2.0f);
        StartCoroutine(coroutine);        print("Coroutine started");
    }    private IEnumerator WaitAndPrint(float waitTime)
    {
        yield return new WaitForSeconds(waitTime);
        print("Coroutine ended: " + Time.time + " seconds");
    }
}
```

### Inherited Members
