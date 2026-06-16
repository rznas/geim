<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRNodeState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the state of a node tracked by an XR system.

To track available XR nodes and acquire state data, handle the InputTracking.nodeAdded and InputTracking.nodeRemoved events or call InputTracking.GetNodeStates.
 Not all XR platforms provide complete tracking data. Use the methods XRNodeState.TryGetPosition, XRNodeState.TryGetRotation, etc. to read the data if it's available.

 XR devices can be accessed in different ways, with the XR Node representing a physical input source such as a head position, hand, or camera.
 See XR Input for an overview of accessing XR devices.

### Properties

| Property | Description |
| --- | --- |
| acceleration | Sets the vector representing the current acceleration of the tracked node. |
| angularAcceleration | Sets the vector representing the current angular acceleration of the tracked node. |
| angularVelocity | Sets the vector representing the current angular velocity of the tracked node. |
| nodeType | The type of the tracked node as specified in XRNode. |
| position | Sets the vector representing the current position of the tracked node. |
| rotation | Sets the quaternion representing the current rotation of the tracked node. |
| tracked | Set to true if the node is presently being tracked by the underlying XR system, and false if the node is not presently being tracked by the underlying XR system. |
| uniqueID | The unique identifier of the tracked node. |
| velocity | Sets the vector representing the current velocity of the tracked node. |

### Public Methods

| Method | Description |
| --- | --- |
| TryGetAcceleration | Attempt to retrieve a vector representing the current acceleration of the tracked node. |
| TryGetAngularAcceleration | Attempt to retrieve a Vector3 representing the current angular acceleration of the tracked node. |
| TryGetAngularVelocity | Attempt to retrieve a Vector3 representing the current angular velocity of the tracked node. |
| TryGetPosition | Attempt to retrieve a vector representing the current position of the tracked node. |
| TryGetRotation | Attempt to retrieve a quaternion representing the current rotation of the tracked node. |
| TryGetVelocity | Attempt to retrieve a vector representing the current velocity of the tracked node. |
