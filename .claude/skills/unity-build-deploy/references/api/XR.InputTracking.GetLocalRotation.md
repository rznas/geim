<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputTracking.GetLocalRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| node | Specifies which node's rotation should be returned. |

### Returns

**Quaternion** The rotation of the node in its local tracking space.

### Description

**Note**: This API has been marked as obsolete in code, and is no longer in use. Please use InputTracking.GetNodeStates and look for the XRNodeState with the corresponding XRNode type instead. Gets the rotation of a specific node.

This can be used to keep objects at the same orientation as the given node. For example, if the user picks up an object you can use this method along with InputTracking.GetLocalPosition to ensure the object is correctly positioned and oriented to match the user's hand.

**Note:** This function doesn't work with the following XRNode types: GameController, TrackingReference, or HardwareTracker. Use the InputTracking.GetNodeStates method instead. See XRNode for more details.
