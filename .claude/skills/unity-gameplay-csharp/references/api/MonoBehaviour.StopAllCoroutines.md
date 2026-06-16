<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.StopAllCoroutines.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops all coroutines running on this MonoBehaviour.

A MonoBehaviour can execute multiple coroutines. Created coroutines can execute for a range of times. In the following example, two coroutines are created and run without stopping until `StopAllCoroutines` is used to stop both of them. This action can be made to happen on a script that runs multiple coroutines. No arguments are needed because all coroutines on a script are stopped.

`StopAllCoroutines` operates only on the script it is attached to.

```csharp
using UnityEngine;
using System.Collections;// Create two coroutines that run at different speeds.
// When the space key is pressed stop both of them.public class ExampleClass : MonoBehaviour
{
    //coroutine 1
    IEnumerator DoSomething1()
    {
        while (true)
        {
            print("DoSomething1");
            yield return new WaitForSeconds(1.0f);
        }
    }    //coroutine 2
    IEnumerator DoSomething2()
    {
        while (true)
        {
            print("DoSomething2");
            yield return new WaitForSeconds(1.5f);
        }
    }    void Start()
    {
        StartCoroutine("DoSomething1");
        StartCoroutine("DoSomething2");
    }    void Update()
    {
        if (Input.GetKeyDown("space"))
        {
            StopAllCoroutines();
            print("Stopped all Coroutines: " + Time.time);
        }
    }
}
```
