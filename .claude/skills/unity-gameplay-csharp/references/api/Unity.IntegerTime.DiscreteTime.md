<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IntegerTime.DiscreteTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Data-type representing a discrete time value.

### Static Properties

| Property | Description |
| --- | --- |
| MaxValue | The maximum representable time. |
| MaxValueSeconds | The maximum representable time in seconds. |
| MinValue | The minimum representable time. |
| MinValueSeconds | The minimum representable time in seconds. |
| Tick | The duration in seconds of a tick (the smallest representable unit of time). |
| Zero | The zero value. |

### Properties

| Property | Description |
| --- | --- |
| Value | The underlying discrete time value, which represents the number of discrete ticks. |

### Constructors

| Constructor | Description |
| --- | --- |
| DiscreteTime | Constructs a discrete time from either seconds (float/double) or ticks (int/long). |

### Public Methods

| Method | Description |
| --- | --- |
| ToString | Returns a string representation of the time. |

### Static Methods

| Method | Description |
| --- | --- |
| FromTicks | Explicitly converts a tick value to a DiscreteTime value. |

### Operators

| Operator | Description |
| --- | --- |
| operator - | Returns the substraction of two time values. |
| operator != | Returns whether two time values are different. |
| operator * | Returns the multiplication of two time values. |
| operator / | A time value divided by a floating point amount. |
| operator + | Returns the addition of two time values. |
| operator < | Returns whether the left-hand time value is less than the right-hand one. |
| operator == | Returns true if the time is equal to a given time, false otherwise. |
| operator > | Returns whether left-hand time value is greater than the right-hand one. |
| RationalTime | Converts a DiscreteTime to a RationalTime representation. This conversion is always lossless. |
| Unknown operator | Returns whether the left-hand time value is less than or equal to the right-hand one. |
| Unknown operator | Returns whether the left-hand time value is greater than or equal to the right-hand one. |
| Unknown operator | Returns the modulus of two time values. |
