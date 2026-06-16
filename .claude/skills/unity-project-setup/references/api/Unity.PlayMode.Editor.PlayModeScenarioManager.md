<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.PlayMode.Editor.PlayModeScenarioManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manages the lifecycle of Play Mode Scenarios, which define custom behaviors for entering and exiting Play mode, such as launching multiple Player instances.

Use the PlayModeScenarioManager to assign, start, and stop the active scenario, and to query its state.

 This API extends, rather than replaces, methods like `EditorApplication.EnterPlaymode`. It's designed for advanced cases that require custom setup and teardown logic or the management of multiple Player instances during Play mode.

 [!NOTE] Avoid manually changing the play state via `EditorApplication.EnterPlaymode()` or `EditorApplication.isPlaying` when a custom scenario is active. Doing so has the following consequences: " **Before a scenario runs:** Manually starting Play mode causes the manager to set the active scenario to the default one. " **While a scenario is running:** Manually starting or altering the play state is unsupported and can cause errors.

 These restrictions don't apply when the default scenario is active. In that case, the behavior is identical to the standard Unity Play mode. For safer operation, always use `PlayModeScenarioManager.Start()` and `PlayModeScenarioManager.Stop()` to control Play mode when using custom scenarios.

### Static Properties

| Property | Description |
| --- | --- |
| ActiveScenario | Returns or sets the active play mode scenario. |
| State | Returns the current state of the active play mode scenario. |

### Static Methods

| Method | Description |
| --- | --- |
| Start | Starts the play mode using the active play mode scenario. |
| Stop | Stops the play mode scenario. |
