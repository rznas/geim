<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyErrorType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Error code for errors related to accessing native container instances in different situations.

Each NativeContainer instance is monitored by an `AtomicSafetyHandle`, which coordinates safe access to the container. If the container can't be accessed safely, then the `AtomicSafetyHandle` generates an error. The values of this enumeration classify the errors that are generated in each type of access situation.

You can set custom error messages for each of these error types on a per-type basis. Use `SetCustomErrorMessage` for each value in this enumeration. 

Additional resources: AtomicSafetyHandle.SetCustomErrorMessage

### Properties

| Property | Description |
| --- | --- |
| Deallocated | Error caused by main thread attempting to access the native container after the container memory is deallocated. |
| DeallocatedFromJob | Error caused by worker thread attempting to access the native container after the container memory is deallocated |
| NotAllocatedFromJob | Error caused by worker thread attempting to access the native container before the container memory is allocated. |
