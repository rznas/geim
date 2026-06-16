<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsDeallocateOnJobCompletionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that a NativeContainer can be automatically deallocated when a job is complete.

Apply this attribute to native container types that you want to automatically deallocate with DeallocateOnJobCompletionAttribute. The native container must contain the following fields:

- A field named `m_Buffer` of a pointer type.
- A field named `m_AllocatorLabel` of type Allocator.

The job system uses the values of these fields to automatically deallocate the native container on job completion. Additional resources: DeallocateOnJobCompletionAttribute

```csharp
[NativeDisableUnsafePtrRestriction]
      internal void*                  m_Buffer;
      internal Allocator              m_AllocatorLabel;
#if ENABLE_UNITY_COLLECTIONS_CHECKS
      [NativeSetClassTypeToNullOnSchedule]
      internal DisposeSentinel        m_DisposeSentinel;
#endif
```
