<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.VisitReturnCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Internal return code used during path visitation.

### Properties

| Property | Description |
| --- | --- |
| Ok | The visitation resolved successfully. |
| NullContainer | The container being visited was null. |
| InvalidContainerType | The given container type is not valid for visitation. |
| MissingPropertyBag | No property bag was found for the given container type. |
| InvalidPath | Failed to resolve some part of the path (e.g. Name, Index or Key). |
| InvalidCast | Failed to reinterpret the target value as the requested type. |
| AccessViolation | Failed to set value at path because it is read-only. |
