<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeDisableContainerSafetyRestrictionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Explicitly disable the safety system for a NativeContainer.

By default, the safety system tracks native containers to avoid race conditions. The safety system catches many race condition bugs, but sometimes you might need to use job and data access that doesn't fit into the safety system. This attribute lets you explicitly disable the safety system for a specific NativeContainer and gives you full control. However, if for example you call `Dispose` on a NativeArray while a job is running, the safety system can't give you any error messages and Unity will most likely crash in that situation.

```csharp
using Unity.Collections;
using Unity.Collections.LowLevel.Unsafe;
using Unity.Jobs;struct MyJob : IJob
{
    [NativeDisableContainerSafetyRestriction]
    NativeArray<int> unsafeArrayAccess;    public void Execute()
    {
        //...
    }
}
```
