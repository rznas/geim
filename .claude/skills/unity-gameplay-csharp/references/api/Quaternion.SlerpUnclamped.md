<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.SlerpUnclamped.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | Start unit quaternion value, returned when t = 0. |
| b | End unit quaternion value, returned when t = 1. |
| t | Interpolation ratio. Value is unclamped. |

### Returns

**Quaternion** A unit quaternion spherically interpolated between unit quaternions `a` and `b`.

### Description

Spherically linear interpolates between unit quaternions `a` and `b` by t.

Additional resources: LerpUnclamped, Slerp.
