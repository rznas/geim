<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Provider.AdaptivePerformanceSubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A class to define a provider subsystem for Adaptive Performance.

### Properties

| Property | Description |
| --- | --- |
| ApplicationLifecycle | Lifecycle of the Subsystem. |
| Capabilities | Bitset of supported features. Does not change after startup. |
| Initialized | Returns if the subsystem is initialized successfully. |
| PerformanceLevelControl | Control CPU or GPU performance levels of the device. Can be null if the subsystem does not support controlling CPU/GPU performance levels. Is null when the Feature.PerformanceLevelControl bit is not set in Capabilities. The returned reference does not change after startup. |
| Stats | Generates a human readable string of subsystem internal stats. Optional and only used for development. |
| Version | Returns the version of the subsystem implementation. Can be used together with SubsystemDescriptor to identify a subsystem. |

### Constructors

| Constructor | Description |
| --- | --- |
| AdaptivePerformanceSubsystem | Main constructor, not used in the subsystem specifically. |

### Public Methods

| Method | Description |
| --- | --- |
| Update | To be called once per frame. The returned data structure's fields are populated with the latest available data, according to the supported Capabilities. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| ApplicationLifecycle | Application lifecycle events to be consumed by subsystem. Can be null if the subsystem does not need special handling on life-cycle events. The returned reference does not change after startup. |
| Capabilities | Bitset of supported features. Does not change after startup. |
| Initialized | Returns if the subsystem is initialized successfully. |
| PerformanceLevelControl | Control CPU or GPU performance levels of the device. Can be null if the subsystem does not support controlling CPU/GPU performance levels. Is null when the Feature.PerformanceLevelControl bit is not set in Capabilities. The returned reference does not change after startup. |
| Stats | Generates a human readable string of subsystem internal stats. Optional and only used for development. |
| Version | Returns the version of the subsystem implementation. Can be used together with SubsystemDescriptor to identify a subsystem. |
| running | Whether or not the subsystem is running.This returns true after Start has been called on the subsystem, and false after Stop is called. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem.Also unloads all resources acquired during the initialization step. Call this when you no longer need this instance of a subsystem.Note: Once a subsystem is Destroyed, script can still hold a reference but calling a method on it will result in a NullArgumentException. |
| Start | Starts an instance of a subsystem.Once the instance is started, the subsystem representing this instance is active and can be interacted with. |
| Stop | Stops an instance of a subsystem.Once the instance is stopped, the subsystem representing this instance is no longer active and should not consume CPU resources. |
