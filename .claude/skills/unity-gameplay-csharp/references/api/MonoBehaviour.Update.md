<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Update is called every frame, if the MonoBehaviour is enabled.

`Update` is the most commonly used function to implement any kind of game script. Not every `MonoBehaviour` script needs `Update`.

```csharp
using UnityEngine;
using System.Collections;// The ExampleClass starts with Awake.  The GameObject class has activeSelf
// set to false.  When activeSelf is set to true the Start() and Update()
// functions will be called causing the ExampleClass to run.
// Note that ExampleClass (Script) in the Inspector is turned off.  It
// needs to be ticked to make script call Start.public class ExampleClass : MonoBehaviour
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

In order to get the elapsed time since last call to Update, use Time.deltaTime. This function is only called if the Behaviour is enabled. Override this function in order to provide your component's functionality.
