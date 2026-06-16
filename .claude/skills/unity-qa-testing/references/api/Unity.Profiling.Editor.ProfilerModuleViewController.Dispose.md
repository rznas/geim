<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Editor.ProfilerModuleViewController.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| disposing | The flag to indicate whether the method call comes from a Dispose method or from a finalizer. A bool. When the value is true, the method call comes from a Dispose method. Otherwise, the method call comes from a finalizer. |

### Description

Disposes the view controller. Unity calls this method automatically when the view controller is no longer required, and its view will be removed from the window hierarchy.

Override this method to do any necessary clean up of your view controller, such as unsubscribing from events. You should always call the base implementation afterwards. You do not need to explicitly remove the view controller’s view from the hierarchy; Unity does this automatically when it disposes of the view controller.

For more information on the C# Dispose pattern, see Microsoft's documentation on [Implementing dispose](https://docs.microsoft.com/en-us/dotnet/standard/garbage-collection/implementing-dispose).

```csharp
protected override void Dispose(bool disposing)
{
    if (disposing)
    {
        // Do any necessary clean up or freeing of managed resources.
    }    // Call the base implementation.
    base.Dispose(disposing);
}
```
