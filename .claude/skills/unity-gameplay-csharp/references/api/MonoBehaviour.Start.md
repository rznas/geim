<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.Start.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Start is called on the frame when a script is enabled just before any of the Update methods are called the first time.

`Start` is called exactly once in the lifetime of the script and always after MonoBehaviour.Awake. `Start` might not be called on the same frame as `Awake` if the script is not enabled at initialization time.

`Start` is not called on any object until `Awake` has been called on every object in the scene. In cases where object A's initialization code relies on object B already being initialized, you can initialize B in B's `Awake` and initialize A in A's `Start`.

If you instantiate objects at runtime from MonoBehaviour.Update, `Awake` and `Start` are called on the instantiated objects before the end of the current frame.

`Start` can be defined as a coroutine.

```csharp
// Initializes the target variable.
// target is private and thus not editable in the Inspector// The ExampleClass starts with Awake.  The GameObject class has activeSelf
// set to false.  When activeSelf is set to true the Start() and Update()
// functions will be called causing the ExampleClass to run.
// Note that ExampleClass (Script) in the Inspector is turned off.  It
// needs to be ticked to make script call Start.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    private float update;    void Awake()
    {
        Debug.Log("Awake");
        update = 0.0f;
    }    IEnumerator Start()
    {
        Debug.Log("Start1");
        yield return new WaitForSeconds(2.5f);
        Debug.Log("Start2");
    }    void Update()
    {
        update += Time.deltaTime;
        if (update > 1.0f)
        {
            update = 0.0f;
            Debug.Log("Update");
        }
    }
}
```
