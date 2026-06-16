<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.FixedUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Update called at regular, fixed intervals as part of Unity's physics update loop.

The interval between calls is determined by the value of Time.fixedDeltaTime. You can modify this value from code or by updating the **Fixed Timestep** value in the Unity Editor's Time settings. The default is 0.02 seconds (50 calls per second).

Use `FixedUpdate` to perform physics system calculations. For example, use `FixedUpdate` when applying a force to a Rigidbody.

Unlike MonoBehaviour.Update, which is called once per rendered frame, `FixedUpdate` may be called zero, one, or multiple times per frame depending on the frame rate and simulation needs. This ensures that physics calculations remain consistent and deterministic, regardless of how fast the game renders frames. Use Application.targetFrameRate to set a target frame rate. For more information on managing frame rate variation, refer to Handling variation in time.

The following example compares the number of `Update` calls against the number of `FixedUpdate` calls.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;// GameObject.FixedUpdate example.
//
// Measure frame rate comparing FixedUpdate against Update.
// Show the rates every second.public class ExampleScript : MonoBehaviour
{
    private float updateCount = 0;
    private float fixedUpdateCount = 0;
    private float updateUpdateCountPerSecond;
    private float updateFixedUpdateCountPerSecond;    void Awake()
    {
        // Uncommenting this will cause framerate to drop to 10 frames per second.
        // This will mean that FixedUpdate is called more often than Update.
        //Application.targetFrameRate = 10;
        StartCoroutine(Loop());
    }    // Increase the number of calls to Update.
    void Update()
    {
        updateCount += 1;
    }    // Increase the number of calls to FixedUpdate.
    void FixedUpdate()
    {
        fixedUpdateCount += 1;
    }    // Show the number of calls to both messages.
    void OnGUI()
    {
        GUIStyle fontSize = new GUIStyle(GUI.skin.GetStyle("label"));
        fontSize.fontSize = 24;
        GUI.Label(new Rect(100, 100, 200, 50), "Update: " + updateUpdateCountPerSecond.ToString(), fontSize);
        GUI.Label(new Rect(100, 150, 200, 50), "FixedUpdate: " + updateFixedUpdateCountPerSecond.ToString(), fontSize);
    }    // Update both CountsPerSecond values every second.
    IEnumerator Loop()
    {
        while (true)
        {
            yield return new WaitForSeconds(1);
            updateUpdateCountPerSecond = updateCount;
            updateFixedUpdateCountPerSecond = fixedUpdateCount;            updateCount = 0;
            fixedUpdateCount = 0;
        }
    }
}
```
