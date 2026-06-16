<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputTracking.GetNodeStates.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nodeStates | A list that is populated with XRNodeState objects. |

### Description

Describes all currently connected XRNodes and provides available tracking states for each.

Use this method to acquire all the currently available XR input Nodes, as an alternative to handling the node events InputTracking.nodeAdded and InputTracking.nodeRemoved. The contents of `nodeStates` list will be cleared and replaced with fresh data.
 Not all XR platforms provide complete tracking data. Use the methods XRNodeState.TryGetPosition, XRNodeState.TryGetRotation, etc. to read the data if it's available.
