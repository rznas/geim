<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Burst.BurstDiscardAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this attribute to exclude a method or property from being compiled to native code by the Burst compiler.

By default, Burst compiles all methods in jobs decorated with the `[BurstCompile]` attribute. You can use the `[BurstDiscard]` attribute on a method or property to exclude code from Burst compilation in situations where it can only run in .NET runtimes. For example, you can use `[BurstDiscard]` to exclude methods that use managed objects to perform logging, or methods that check the validity of something only valid in a managed environment.

```csharp
using Unity.Burst;
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;[BurstCompile]
public struct MyJob : IJob
{
    // ...    [BurstDiscard]
    public void NotExecutedInNative()
    {
        Debug.Log("This is a log from a managed job");
    }    public void Execute()
    {
        // The following method call will not be compiled
        NotExecutedInNative();
    }
}
```
