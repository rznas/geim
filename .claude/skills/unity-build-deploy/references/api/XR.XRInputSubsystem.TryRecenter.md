<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRInputSubsystem.TryRecenter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the method recenters the XRInputSubsystem. Returns false otherwise.

### Description

Centers the tracking features on all InputDevices to the current position and orientation of the head-mounted device.

This can fail depending on the TrackingOriginMode of the subsystem does not support recentering.
