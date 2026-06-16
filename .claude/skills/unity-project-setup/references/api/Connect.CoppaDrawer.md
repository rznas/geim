<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Connect.CoppaDrawer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A container that fetches the UIElements that draw the COPPA compliance UI and subscribes to its events.

### Constructors

| Constructor | Description |
| --- | --- |
| CoppaDrawer | The default constructor for the COPPA UI drawer that subscribes to the callback events for the Cancel and Save buttons. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Disposes of the UI. |
| GetVisualElement | A method that retrieves the Coppa compliance UI. |

### Events

| Event | Description |
| --- | --- |
| exceptionCallback | An event that fires when an exception is thrown within the COPPA Compliance UI. |
| stateChangeButtonFired | An event that fires when any button causes a state change within the COPPA compliance UI. |
