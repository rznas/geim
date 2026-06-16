<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.SubsystemsModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Subsystem module contains the definitions and runtime support for general subsystems in Unity.

### Classes

| Class | Description |
| --- | --- |
| IntegratedSubsystem | An IntegratedSubsystem is initialized from an IntegratedSubsystemDescriptor for a given Subsystem (Example, Input, Environment, Display, etc.) and provides an interface to interact with that given IntegratedSubsystem until it is Destroyed. After an IntegratedSubsystem is created it can be Started or Stopped to turn on and off functionality (and preserve performance). The base type for IntegratedSubsystem only exposes this functionality; this class is designed to be a base class for derived classes that expose more functionality specific to a given IntegratedSubsystem. Note: initializing a second IntegratedSubsystem from the same IntegratedSubsystemDescriptor will return a reference to the existing IntegratedSubsystem as only one IntegratedSubsystem is currently allowed for a single IntegratedSubsystem provider. |
| IntegratedSubsystemDescriptor | Information about a subsystem that can be queried before creating a subsystem instance. |
| SubsystemDescriptorStore | Registration entry point for subsystems to register their descriptor. |
| SubsystemDescriptorWithProvider | Information about a SubsystemWithProvider that can be queried before creating a subsystem instance. |
| SubsystemManager | Gives access to subsystems which provide additional functionality through plugins. |
| SubsystemProvider | A provider that supplies data to a subsystem, generally for platform-specific implementations. |
| SubsystemWithProvider | A subsystem is initialized from a SubsystemDescriptorWithProvider for a given subsystem (Session, Plane, Face, etc.) and provides an interface to interact with that given subsystem until it is Destroyed. After a subsystem is created, it can be Started or Stopped to turn on and off functionality and preserve performance. The base type for the subsystem only exposes this functionality; this class is designed to be a base class for derived classes that expose more functionality specific to a given subsystem.*Note:* Initializing a second subsystem from the same subsystem descriptor will return a reference to the existing subsystem, because only one subsystem is currently allowed for a single subsystem provider. |
