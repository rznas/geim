<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeDisableUnsafePtrRestrictionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable the use of unsafe pointers in jobs.

By default, unsafe pointers aren't allowed in jobs because it isn't possible for the Job Debugger to gurantee race condition free behavior. This attribute lets you explicitly disable the restriction on a job.

```csharp
struct MyJob : IJob
{
    [NativeDisableUnsafePtrRestriction]
    int* myCustomPointer;
    void Execute()
    {
        ...
    }
}
```
