<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-lowMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The `Application._lowMemory` event occurs when your application receives a low-memory notification from the device it is running on.

This only occurs when your application is running in the foreground. You can release non-critical assets from memory (such as, textures and audio clips) to avoid the application from being terminated. You can also load smaller versions of such assets. In addtion, you should serialize any transient data to permanent storage to avoid data loss if the app is terminated.

The `Application._lowMemory` event is supported on iOS, Android, and Universal Windows Platform (UWP) and it corresponds to the following callbacks on different platforms:

- **iOS**: `UIApplicationDelegate applicationDidReceiveMemoryWarning`
- **Android**: `onLowMemory(`) and `onTrimMemory(level == TRIM_MEMORY_RUNNING_CRITICAL)`
- **UWP**: `MemoryManager.AppMemoryUsageIncreased (AppMemoryUsageLevel == OverLimit)`

**Note:** For UWP, this event does not occur on desktop and only works on memory constrained devices, such as HoloLens and Xbox One. The OverLimit threshold specified by the OS in this case is so high that it's not reasonably possible to reach it and trigger the event.

Following example shows an example of handling the callback:

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;class LowMemoryTrigger : MonoBehaviour
{
    List<Texture2D> _textures;    private void Start()
    {
        _textures = new List<Texture2D>();
        Application.lowMemory += OnLowMemory;
    }    private void Update()
    {
        // allocate textures until we run out of memory
        _textures.Add(new Texture2D(256, 256));
    }    private void OnLowMemory()
    {
        // release all cached textures
        _textures = new List<Texture2D>();
        Resources.UnloadUnusedAssets();
    }
}
```
