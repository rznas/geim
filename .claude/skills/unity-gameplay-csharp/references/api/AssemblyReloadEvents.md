<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssemblyReloadEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class has event dispatchers for assembly reload events.

```csharp
using UnityEditor;
using UnityEngine;public class MyWindow : EditorWindow
{
    [MenuItem("Test/Show My Window")]
    static void Init()
    {
        GetWindow<MyWindow>();
    }    void OnEnable()
    {
        AssemblyReloadEvents.beforeAssemblyReload += OnBeforeAssemblyReload;
        AssemblyReloadEvents.afterAssemblyReload += OnAfterAssemblyReload;
    }    void OnDisable()
    {
        AssemblyReloadEvents.beforeAssemblyReload -= OnBeforeAssemblyReload;
        AssemblyReloadEvents.afterAssemblyReload -= OnAfterAssemblyReload;
    }    public void OnBeforeAssemblyReload()
    {
        Debug.Log("Before Assembly Reload");
    }    public void OnAfterAssemblyReload()
    {
        Debug.Log("After Assembly Reload");
    }
}
```

### Events

| Event | Description |
| --- | --- |
| afterAssemblyReload | This event is dispatched just after Unity have reloaded all assemblies. |
| beforeAssemblyReload | This event is dispatched just before Unity reloads all assemblies. |

### Delegates

| Delegate | Description |
| --- | --- |
| AssemblyReloadCallback | Delegate used for assembly reload events. |
