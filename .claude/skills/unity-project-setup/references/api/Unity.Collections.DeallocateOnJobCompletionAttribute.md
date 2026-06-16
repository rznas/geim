<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.DeallocateOnJobCompletionAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Automatically deallocates a native container when a job is finished.

Use this attribute on native container fields marked with NativeContainerSupportsDeallocateOnJobCompletionAttribute in a job struct. In particular, fields of type NativeArray can be automatically deallocated with this attribute. When the job finishes execution, the job system automatically deallocates the native container.

 Additional resources: NativeContainerSupportsDeallocateOnJobCompletionAttribute
