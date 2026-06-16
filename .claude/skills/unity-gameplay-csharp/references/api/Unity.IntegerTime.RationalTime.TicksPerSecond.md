<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IntegerTime.RationalTime.TicksPerSecond.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of ticks per second ( rate ) of the discrete time, expressed as a rational number.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultTicksPerSecond | The default rate is 141120000 ticks per second. This value can represent most frame rates in a lossless way. |
| TicksPerSecond11988 | 120 Frames per second drop-frame. |
| TicksPerSecond120 | 120 Frames per second. |
| TicksPerSecond2397 | 24 Frames per second drop-frame. |
| TicksPerSecond24 | 24 Frames per second. |
| TicksPerSecond2425 | 25 Frames per second drop-frame. |
| TicksPerSecond25 | 25 Frames per second. |
| TicksPerSecond2997 | 30 Frames per second drop-frame. |
| TicksPerSecond30 | 30 Frames per second. |
| TicksPerSecond50 | 50 Frames per second. |
| TicksPerSecond5994 | 60 Frames per second drop-frame. |
| TicksPerSecond60 | 60 Frames per second. |

### Properties

| Property | Description |
| --- | --- |
| Denominator | Returns the denominator. |
| Numerator | Returns the numerator. |
| Valid | Returns whether the rate is valid. An invalid rate has a 0 denominator. |

### Constructors

| Constructor | Description |
| --- | --- |
| RationalTime.TicksPerSecond | Constructor that builds a rational TicksPerSecond. The fraction is immediately reduced. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns whether two values are equal. |
