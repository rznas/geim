<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetBumpSecondaryVersionOnScheduleWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |
| value | Use `true` to bump the secondary version number on schedule. |

### Description

Sets whether to automatically bump the secondary version when scheduling a job that has write access to the AtomicSafetyHandle.

For example, NativeList sets this on its AtomicSafetyHandle, which cause any aliased NativeArrays (created using `AsArray()`) to be invalidated whenever a job is scheduled that uses this NativeList without the `[ReadOnly]` attribute.

For more information about container version numbers, refer to Copying NativeContainer structures.
