<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IntegerTime.RationalTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Data type that represents time as an integer count of a rational number.

### Properties

| Property | Description |
| --- | --- |
| Count | Returns the number of ticks. |
| Ticks | Returns the number of ticks per second. |

### Static Methods

| Method | Description |
| --- | --- |
| FromDouble | Converts a floating point number into a RationalTime with an explicit rate. |

### Operators

| Operator | Description |
| --- | --- |
| DiscreteTime | Converts a RationalTime to DiscreteTime representation. If the rate denominator is 1 and the DiscreteTime.TicksPerSecond is a multiple of the numerator, this conversion is lossless. |
