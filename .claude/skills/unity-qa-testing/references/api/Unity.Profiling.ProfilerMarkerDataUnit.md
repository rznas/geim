<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarkerDataUnit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for Profiler marker data unit types.

Use unit types to define how Unity visualizes a particular value in the Profiler. A unit type represents dimensionality. For example, a unit type for time is represented as seconds, and a unit type for data size is represented as bytes.

### Properties

| Property | Description |
| --- | --- |
| Undefined | Use to display data value as string if ProfilerMarkerDataTypes.String16 or as a simple number without any unit abbreviations. Also use Undefined in combination with ProfilerMarkerDataTypes.Blob8 which won't be visualized. |
| TimeNanoseconds | Display data value as a time, specified in nanoseconds. |
| Bytes | Display data value as a size, specified in bytes. |
| Count | Display data value as a simple number without any unit abbreviations. |
| Percent | Display data value as a percentage value with % postfix. |
| FrequencyHz | Display data value as a frequency, specified in hertz. |
