<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ISubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface implemented by both Subsystem and IntegratedSubsystem which provides control over the state of either.

### Properties

| Property | Description |
| --- | --- |
| running | Will be true if asking the subsytem to start was successful. False in the case that the subsystem has stopped, was asked to stop or has not been started yet. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem. |
| Start | Starts an instance of a subsystem. |
| Stop | Stops an instance of a subsystem. |
