<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.AdaptivePerformanceSubsystem.APProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An abstract class to be implemented by providers of this subsystem.

### Properties

| Property | Description |
| --- | --- |
| ApplicationLifecycle | Application lifecycle events to be consumed by subsystem. Can be null if the subsystem does not need special handling on life-cycle events. The returned reference does not change after startup. |
| Capabilities | Bitset of supported features. Does not change after startup. |
| Initialized | Returns if the subsystem is initialized successfully. |
| PerformanceLevelControl | Control CPU or GPU performance levels of the device. Can be null if the subsystem does not support controlling CPU/GPU performance levels. Is null when the Feature.PerformanceLevelControl bit is not set in Capabilities. The returned reference does not change after startup. |
| running | Returns if the subsystem is running. |
| Stats | Generates a human readable string of subsystem internal stats. Optional and only used for development. |
| Version | Returns the version of the subsystem implementation. Can be used together with SubsystemDescriptor to identify a subsystem. |

### Public Methods

| Method | Description |
| --- | --- |
| Update | To be called once per frame. The returned data structure's fields are populated with the latest available data, according to the supported Capabilities. |

### Inherited Members
