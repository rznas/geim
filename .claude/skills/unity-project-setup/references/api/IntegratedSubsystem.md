<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IntegratedSubsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An IntegratedSubsystem is initialized from an IntegratedSubsystemDescriptor for a given Subsystem (Example, Input, Environment, Display, etc.) and provides an interface to interact with that given IntegratedSubsystem until it is Destroyed. After an IntegratedSubsystem is created it can be Started or Stopped to turn on and off functionality (and preserve performance). The base type for IntegratedSubsystem only exposes this functionality; this class is designed to be a base class for derived classes that expose more functionality specific to a given IntegratedSubsystem.

 Note: initializing a second IntegratedSubsystem from the same IntegratedSubsystemDescriptor will return a reference to the existing IntegratedSubsystem as only one IntegratedSubsystem is currently allowed for a single IntegratedSubsystem provider.

### Properties

| Property | Description |
| --- | --- |
| running | Whether or not the subsystem is running. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem. |
| Start | Starts an instance of a subsystem. |
| Stop | Stops an instance of a subsystem. |
