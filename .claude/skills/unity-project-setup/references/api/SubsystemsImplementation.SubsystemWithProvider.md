<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SubsystemsImplementation.SubsystemWithProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A subsystem is initialized from a SubsystemDescriptorWithProvider for a given subsystem (Session, Plane, Face, etc.) and provides an interface to interact with that given subsystem until it is Destroyed. After a subsystem is created, it can be Started or Stopped to turn on and off functionality and preserve performance. The base type for the subsystem only exposes this functionality; this class is designed to be a base class for derived classes that expose more functionality specific to a given subsystem.

*Note:* Initializing a second subsystem from the same subsystem descriptor will return a reference to the existing subsystem, because only one subsystem is currently allowed for a single subsystem provider.

### Properties

| Property | Description |
| --- | --- |
| running | Whether or not the subsystem is running.This returns true after Start has been called on the subsystem, and false after Stop is called. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroys this instance of a subsystem.Also unloads all resources acquired during the initialization step. Call this when you no longer need this instance of a subsystem.Note: Once a subsystem is Destroyed, script can still hold a reference but calling a method on it will result in a NullArgumentException. |
| Start | Starts an instance of a subsystem.Once the instance is started, the subsystem representing this instance is active and can be interacted with. |
| Stop | Stops an instance of a subsystem.Once the instance is stopped, the subsystem representing this instance is no longer active and should not consume CPU resources. |
