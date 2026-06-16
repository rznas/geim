<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.AdaptivePerformanceIndexer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Higher level implementation of Adaptive performance that tracks performance and thermal states of the device and provides them to AdaptivePerformanceScaler which use the information to increase or decrease performance levels. System acts as AdaptivePerformanceScaler manager and handles the lifetime of the scalers in the scenes.

### Properties

| Property | Description |
| --- | --- |
| PerformanceAction | Current determined action needed from performance state. Action StateAction.Increase will be ignored if ThermalAction is decreasing. |
| ThermalAction | Current determined action needed from thermal state. Action StateAction.Increase will be ignored if PerformanceAction is decreasing. |
| TimeUntilNextAction | Time left until next action. |

### Public Methods

| Method | Description |
| --- | --- |
| GetAllRegisteredScalers | Returns all scalers independent of their state. |
| GetAppliedScalers | Returns all currently applied scalers. |
| GetDisabledScalers | Returns all currently disabled scalers. |
| GetUnappliedScalers | Returns all currently unapplied scalers. |
| UnapplyAllScalers | Unapply all currently active scalers. |

### Protected Methods

| Method | Description |
| --- | --- |
| DeltaTime | Returns Time.deltaTime only and is primarily encapsulated for tests. |
