<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputTracking.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A collection of methods and properties for accessing XR input devices by their XR Node representation.

XR devices can be accessed in different ways, with the XR Node representing a physical input source such as a head position, hand, or camera.
 See XR Input for an overview of accessing XR devices.

### Static Methods

| Method | Description |
| --- | --- |
| GetNodeStates | Describes all currently connected XRNodes and provides available tracking states for each. |

### Events

| Event | Description |
| --- | --- |
| nodeAdded | Called when a tracked node is added to the underlying XR system. |
| nodeRemoved | Called when a tracked node is removed from the underlying XR system. |
| trackingAcquired | Called when a tracked node begins reporting tracking information. |
| trackingLost | Called when a tracked node stops reporting tracking information. |
