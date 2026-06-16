<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetAllowSecondaryVersionWriting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle of the NativeContainer. |
| allowWriting | If true, allows write access to the NativeContainer for AtomicSafetyHandles that use secondary version number. If false, handles that usse a secondary version number only have read access to the NativeContainer. |

### Description

Sets whether other AtomicSafetyHandles that use a secondary version number can write to the NativeContainer protected by a given AtomicSafetyHandle.

Additional resources: AtomicSafetyHandle.UseSecondaryVersion, Copying NativeContainer structures.
