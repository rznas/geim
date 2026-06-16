<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.WarningLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Warning levels are used in the ThermalMetrics and describe the thermal status of the device. There are three possible statuses.

### Properties

| Property | Description |
| --- | --- |
| NoWarning | No warning is the normal warning level during standard thermal state. |
| ThrottlingImminent | If throttling is imminent, the application should perform adjustments to avoid thermal throttling. |
| Throttling | If the application is in the throttling state, it should make adjustments to go back to normal temperature levels. |
