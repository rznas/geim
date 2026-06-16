<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.ThermalMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ThermalMetrics stores the thermal state as TemperatureLevel, TemperatureTrend, and WarningLevel.

### Properties

| Property | Description |
| --- | --- |
| TemperatureLevel | Current normalized temperature level in the range of [0, 1]. A value of 0 means standard operation temperature and that the device is not in a throttling state. A value of 1 means that the device has reached maximum temperature and is either going into or is already in throttling state. |
| TemperatureTrend | Current normalized temperature trend in the range of [-1, 1]. A value of 1 describes a rapid increase in temperature. A value of 0 describes a constant temperature. A value of -1 describes a rapid decrease in temperature. Note: It takes at least 10s until the temperature trend can start reflecting any changes. |
| WarningLevel | Current thermal warning level. |
