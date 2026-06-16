<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeContainerSupportsMinMaxWriteRestrictionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that a native container type can restrict its writable ranges to be between a min and a max index.

You must mark your native container type with this attribute to write to an instance of the container type in an IJobParallelFor job. IJobParallelFor jobs use this write restriction to make sure that each parallel job instance only writes to its assigned range in the native container. 

To support the min-max write restriction, your native container type must have the members `int m_Length`, `int m_MinIndex`, and `int m_MaxIndex` in that order with no other members between them. The container must also throw an exception for writes outside the min/max range.

**Note:** You can relax the parallel writing restriction for any native container instance using the NativeDisableParallelForRestriction attribute. However, that also removes any checks to prevent parallel job instances from overwriting the same elements in the container.

```csharp
private readonly int m_Length;
#if ENABLE_UNITY_COLLECTIONS_CHECKS
        private readonly int m_MinIndex;
        private readonly int m_MaxIndex;
#endif
```
