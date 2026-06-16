<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevel.PlayerLoop.SetPlayerLoop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set a new custom update order for all engine systems in Unity.

Use `SetPlayerLoop` to specify a custom update order for the Player loop. The PlayerLoopSystem supplied as the `loop` parameter becomes the new current Player loop returned by GetCurrentPlayerLoop. The new update order does not take effect until the next full Player loop iteration, but the changes are immediately visible in subsequent calls to GetCurrentPlayerLoop.

Only systems included in the new Player loop will run. You can insert custom script entry points in the update order before setting it. For example, this allows you to add a script that runs immediately before physics, or in other places where scripts are not run by default.

The following example inserts a custom Player loop system that runs after the `PreLateUpdate` system in the Player loop. The custom system's `updateDelegate` is assigned the `CustomUpdate` method, which prints a message to the console when it runs.

Additional resources: PlayerLoopSystem.

```csharp
using System.Collections.Generic;
using UnityEngine.LowLevel;
using UnityEngine.PlayerLoop;
using UnityEngine;
using System;

// Insert a custom update at a specified point (after an existing update phase) in the Unity Player Loop.

public class MyCustomUpdate { } // Empty class to use as a type identifier for the custom update

public static class InsertSystem
{
    // Event that MonoBehaviour scripts can subscribe to for custom update logic
    public static event Action AddCustomUpdate;

    //Run this method on runtime initialization
    [RuntimeInitializeOnLoadMethod]
    private static void AppStart()
    {
        // Retrieve the default Player loop system. Get the current loop instead if the default was already modified previously.
        var defaultLoop = PlayerLoop.GetDefaultPlayerLoop();

        // Create a custom update system
        var myCustomUpdate = new PlayerLoopSystem
        {
            subSystemList = null,
            updateDelegate = CustomUpdate,
            type = typeof(MyCustomUpdate)
        };
        // Add the custom update system after the PreLateUpdate phase in the Player Loop
        var loopWithCustomUpdate = InsertSystemAfter<PreLateUpdate>(in defaultLoop, myCustomUpdate);
        PlayerLoop.SetPlayerLoop(loopWithCustomUpdate);
    }

    private static PlayerLoopSystem InsertSystemAfter<T>(in PlayerLoopSystem loopSystem, PlayerLoopSystem newSystem) where T : struct
    {
        // Create a new root PlayerLoopSystem
        PlayerLoopSystem newPlayerLoop = new()
        {
            loopConditionFunction = loopSystem.loopConditionFunction,
            type = loopSystem.type,
            updateDelegate = loopSystem.updateDelegate,
            updateFunction = loopSystem.updateFunction
        };
        // Create a new list to populate with subsystems, including the custom system
        List<PlayerLoopSystem> newSubSystemList = new();

        //Iterate through the subsystems in the existing loop we passed in and add them to the new list
        if (loopSystem.subSystemList != null)
        {
            for (var i = 0; i < loopSystem.subSystemList.Length; i++)
            {
                newSubSystemList.Add(loopSystem.subSystemList[i]);
                // If the previously added subsystem is of the type to add after, add the custom system
                if (loopSystem.subSystemList[i].type == typeof(T))
                {
                    newSubSystemList.Add(newSystem);
                }
            }
        }

        newPlayerLoop.subSystemList = newSubSystemList.ToArray();
        return newPlayerLoop;
    }

    //Custom update function that will be called in the Player Loop
    private static void CustomUpdate()
    {
        // Invoke the custom update event if there are subscribers
        AddCustomUpdate?.Invoke();
        Debug.Log("Custom update inserted in the default Player loop.");
    }
}
```
