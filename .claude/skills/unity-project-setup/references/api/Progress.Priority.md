<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Priority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An enumeration that defines task priorities.

Progress indicators are sorted by priority, from highest to lowest. Priorities also determine the visual behavior of progress indicators. Each item in this enumeration defines the threshold value for each priority level. For example, Low is 2 and Normal is 6, so values between 2 and 5 are Low priorities.

### Properties

| Property | Description |
| --- | --- |
| Unresponsive | An unresponsive task is always shown as unresponsive. |
| Idle | An idle priority task cannot be unresponsive, and is not displayed in the global progress bar. |
| Low | A low priority task cannot be unresponsive, but is displayed in the global progress bar. |
| Normal | A normal priority task can be unresponsive, and is displayed in the global progress bar. |
| High | A high priority task can be unresponsive, and is displayed in the global progress bar. |
