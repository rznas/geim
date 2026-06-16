<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetNestedContainer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to flag. |
| isNestedContainer | Set to `true` to flag the container protected by this AtomicSafetyHandle as nested; `false` otherwise. |

### Description

Sets the nested container flag on an AtomicSafetyHandle.

The job system doesn't support nested containers which are containers where the individual elements inside the container are themselves containers), because it can't configure the AtomicSafetyHandle instances stored inside the container's elements independently for each job using the container. This means that attempting to use a nested container in a job doesn't work correctly.

To protect against using nested containers in jobs and prevent subtle and hard-to-diagnose errors from arising, you should set the nested container flag on any container's AtomicSafetyHandle that detects that it is being used to store containers. This makes the Job Debugger throw an explicit error when scheduling a job which tries to use a nested container.

Additional resources: AtomicSafetyHandle.GetNestedContainer.
