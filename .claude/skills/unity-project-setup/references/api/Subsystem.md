<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Subsystem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Subsystem is initialized from a SubsystemDescriptorWithProvider for a given Subsystem (Example, Input, Display, etc.) and provides an interface to interact with that given Subsystem until it is Destroyed. After a Subsystem is created it can be Started or Stopped to turn on and off functionality (and improve performance). The base type for subsystems only exposes this functionality; this class is designed to be a base class for derived classes that expose more functionality specific to a given Subsystem.

 Note: initializing a second Subsystem from the same SubsystemDescriptor will return a reference to the existing Subsystem as only one Subsystem is currently allowed for a single Subsystem provider.

This subsystem base-class is deprecated. If you are creating a new subsystem type, derive from SubsystemWithProvider instead.
