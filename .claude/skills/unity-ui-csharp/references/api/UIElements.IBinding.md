<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base interface for Binding objects.

### Public Methods

| Method | Description |
| --- | --- |
| PreUpdate | Called at regular intervals to synchronize bound properties to their IBindable counterparts. Called before the Update() method. |
| Release | Disconnects the field from its bound property. |
| Update | Called at regular intervals to synchronize bound properties to their IBindable counterparts. |
