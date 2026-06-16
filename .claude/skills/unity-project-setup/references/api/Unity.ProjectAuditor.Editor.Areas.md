<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Areas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which area(s) of a project may be affected by a ReportItem.

### Properties

| Property | Description |
| --- | --- |
| None | Indicates some error with the Descriptor data: A descriptor should never match no areas. |
| BuildSize | Application size |
| BuildTime | Build time |
| CPU | CPU Performance |
| GPU | GPU Performance |
| IterationTime | Issues which affect iteration time in the Editor and can hamper productivity during development |
| LoadTime | Load times |
| Memory | Memory consumption |
| Quality | Quality. For example, using deprecated APIs that might be removed in the future |
| Requirement | Required by platform. Typically this issue must be fixed before submitting to the platform store |
| Support | Lack of platform support. For example, using APIs that are not supported on a specific platform and might fail at runtime |
| All | Bitmask value representing all areas |
