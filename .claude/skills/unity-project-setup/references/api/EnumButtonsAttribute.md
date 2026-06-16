<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EnumButtonsAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute to enable editing an enum with a ToggleButtonGroup.

```csharp
using System;
using System.Collections.Generic;
using UnityEngine;

public enum Position
{
    First,
    Second,
    Third
}

[Flags]
public enum DaysOfWeek
{
    None = 0,
    Sunday = 1 << 0,
    Monday = 1 << 1,
    Tuesday = 1 << 2,
    Wednesday = 1 << 3,
    Thursday = 1 << 4,
    Friday = 1 << 5,
    Saturday = 1 << 6,

    Weekdays = Monday | Tuesday | Wednesday | Thursday | Friday,
    Weekend = Saturday | Sunday,
}

public class EnumExample : MonoBehaviour
{
    [EnumButtons]
    public Position number;

    [EnumButtons]
    public DaysOfWeek days;

    [EnumButtons]
    public List<Position> numbersList;
}
```

### Properties

| Property | Description |
| --- | --- |
| includeObsolete | Whether to display obsolete enum values? |

### Constructors

| Constructor | Description |
| --- | --- |
| EnumButtonsAttribute | Attribute to enable editing an enum with a ToggleButtonGroup. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
