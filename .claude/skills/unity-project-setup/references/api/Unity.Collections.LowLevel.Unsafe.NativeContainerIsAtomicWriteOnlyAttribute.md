<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeContainerIsAtomicWriteOnlyAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the native container only allows writing, and can only be written to in safe, parallel contexts.

Use this attribute when defining a concurrent, write-only interface to the data in the native container.

Providing a write-only interface to the data in a native container allows your container to be passed to parallel job types, such as IJobParallelFor, as writable without restrictions on which indices can be written to, and indicates that none of the portions overlap. 

Native container types marked with this attribute must enforce write-only access. 

For an alternative method of supporting parallel writing, refer to NativeContainerSupportsMinMaxWriteRestrictionAttribute. For information on creating your own native container, refer to the User Manual documentation on Implement a custom native container.
