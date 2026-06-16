<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Connect.ProjectBindDrawer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A container that fetches the UIElements that draw the Project Binding UI, and subscribes to its events.

### Constructors

| Constructor | Description |
| --- | --- |
| ProjectBindDrawer | The default constructor for the Drawer that subscribes to the callback events for the Link and Create buttons. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes of the UI. |
| GetVisualElement | Retrieves the ProjectBind UI. |

### Events

| Event | Description |
| --- | --- |
| exceptionCallback | An event that fires when an exception is thrown within the Project Bind UI. |
| stateChangeButtonFired | An event that fires when any button within the Project Bind UI causes a state change. |
