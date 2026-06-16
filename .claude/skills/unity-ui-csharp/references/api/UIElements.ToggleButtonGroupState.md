<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ToggleButtonGroupState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The structure that keeps track of the Button states inside a ToggleButtonGroup.

To set properties on how to serialize this type, use ToggleButtonGroupStatePropertiesAttribute.

### Properties

| Property | Description |
| --- | --- |
| length | Returns the number of toggle button options available. |
| this[int] | The option based on the index. |

### Constructors

| Constructor | Description |
| --- | --- |
| ToggleButtonGroupState | Constructs a ToggleButtonGroupState. |

### Public Methods

| Method | Description |
| --- | --- |
| CompareTo | Compares two ToggleButtonGroupState. |
| Equals | Checks if a given ToggleButtonGroupState matches with the current one. |
| GetActiveOptions | Retrieves a Span of integers containing the active options as indices. |
| GetHashCode | Get the hashcode of this ToggleButtonGroupState. |
| GetInactiveOptions | Retrieves a Span of integers containing the inactive options as indices. |
| ResetAllOptions | Resets the states of the toggle buttons. |
| SetAllOptions | Sets all the available options to active. |
| ToggleAllOptions | Toggles all the available options' state. |

### Static Methods

| Method | Description |
| --- | --- |
| Compare | Compares two ToggleButtonGroupState of flag enum types. |
| CreateFromOptions | Helps generate a ToggleButtonGroupState based on a list of booleans. |
| FromEnumFlags | Creates a ToggleButtonGroupState based on a FlagsAttribute enum type. |
| ToEnumFlags | Synchronizes the internal data with the ToggleButtonGroupState from a FlagsAttribute. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Checks if both of the ToggleButtonGroupState are not the same. |
| operator == | Checks if both of the ToggleButtonGroupState are the same. |
