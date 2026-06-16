<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ApplicationMemoryUsage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the application memory usage level.

### Properties

| Property | Description |
| --- | --- |
| Unknown | The memory usage level of the application is not known. |
| Low | Application can safely allocate significant amounts of memory. |
| Medium | Application is at safe memory usage level and has some margin to allocate more. |
| High | Application is at risk of getting low on memory. To prevent this, avoid allocating significant amounts of memory, and release some resources. |
| Critical | Application is dangerously low on memory and is at risk of being closed by the Operating System. To prevent this, release some resources immediately. |
