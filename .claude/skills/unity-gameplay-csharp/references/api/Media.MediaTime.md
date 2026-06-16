<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Media.MediaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Time representation for use with media containers.

A MediaTime can be thought of as "sample #`count` at `rate` Hz".

This representation is precise, even for large values, because the sample count and rate are stored separately and do not make use of floating point storage.

### Static Properties

| Property | Description |
| --- | --- |
| Invalid | Invalid time value. |

### Properties

| Property | Description |
| --- | --- |
| count | The sample count for the time value. |
| rate | The rate used for converting the count into seconds. |

### Constructors

| Constructor | Description |
| --- | --- |
| MediaTime | Creates a time value with an integer number of seconds, using 1Hz for the rate. |

### Operators

| Operator | Description |
| --- | --- |
| double | Returns the time value expressed as a floating point number of seconds. |
