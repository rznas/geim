<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ResourcesAPI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Derive from this base class to provide alternative implementations to the C# behavior of specific Resources methods.

The example provided logs the time taken to handle slower Resources APIs to the player or editor log.

```csharp
using System;
using System.Diagnostics;
using UnityEngine;
using Object = UnityEngine.Object;
using Debug = UnityEngine.Debug;public class ResourcesPerformanceLogger : ResourcesAPI
{
    [RuntimeInitializeOnLoadMethod]
    static void OnRuntimeMethodLoad()
    {
        ResourcesAPI.overrideAPI = new ResourcesPerformanceLogger();
    }    protected override Object[] FindObjectsOfTypeAll(Type systemTypeInstance)
    {
        Stopwatch timer = new Stopwatch();
        timer.Start();
        Object[] results = base.FindObjectsOfTypeAll(systemTypeInstance);
        timer.Stop();
        Debug.Log($"FindObjectsOfTypeAll({systemTypeInstance}) Time: {timer.Elapsed}");
        return results;
    }    protected override Shader FindShaderByName(string name)
    {
        Stopwatch timer = new Stopwatch();
        timer.Start();
        Shader result = base.FindShaderByName(name);
        timer.Stop();
        Debug.Log($"FindShaderByName({name}) Time: {timer.Elapsed}");
        return result;
    }    protected override Object[] LoadAll(string path, Type systemTypeInstance)
    {
        Stopwatch timer = new Stopwatch();
        timer.Start();
        Object[] results = base.LoadAll(path, systemTypeInstance);
        timer.Stop();
        Debug.Log($"LoadAll({path}, {systemTypeInstance}) Time: {timer.Elapsed}");
        return results;
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| overrideAPI | The specific ResourcesAPI instance to use to handle overridden Resources methods. |

### Protected Methods

| Method | Description |
| --- | --- |
| FindObjectsOfTypeAll | Override for customizing the behavior of the Resources.FindObjectsOfTypeAll function. |
| FindShaderByName | Override for customizing the behavior of the Shader.Find function. |
| Load | Override for customizing the behavior of the Resources.Load function. |
| LoadAll | Override for customizing the behavior of the Resources.LoadAll function. |
| LoadAsync | Override for customizing the behavior of the Resources.LoadAsync function. |
| UnloadAsset | Override for customizing the behavior of the Resources.Unload function. |
