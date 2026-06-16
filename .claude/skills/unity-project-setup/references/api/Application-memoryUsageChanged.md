<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-memoryUsageChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Informs about significant changes in the application's memory usage.

This event occurs when there are significant changes in the application's memory usage, such as an increase to a dangerous level or a drop to a much safer level.

You can use this event to balance your application's memory usage for device capability. For example, you can lower the resource intensity of your application when memory usage becomes critical.

iOS, Android, and Universal Windows Platform (UWP) support this event, but not every platform supports all possible ApplicationMemoryUsage values.

- Android supports Medium, High, and Critical. 
**Note:** When targeting [GameActivity](https://developer.android.com/games/agdk/game-activity), only Critical is supported.
- iOS supports Critical.
- UWP supports Low, Medium, High, and Critical.

```csharp
using System;
using UnityEngine;public class Sample : MonoBehaviour
{
    void Start()
    {
        Application.memoryUsageChanged += OnMemoryUsageChanged;
    }    void OnMemoryUsageChanged(in ApplicationMemoryUsageChange newUsage)
    {
        if (newUsage.memoryUsage == ApplicationMemoryUsage.Critical)
        {
            // release resources here
            Resources.UnloadUnusedAssets();
            GC.Collect();
        }
    }
}
```

This code sample shows how to perform garbage collection if the application is critically low on memory.
