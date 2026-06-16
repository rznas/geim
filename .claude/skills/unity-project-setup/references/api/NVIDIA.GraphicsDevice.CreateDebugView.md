<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.GraphicsDevice.CreateDebugView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**GraphicsDeviceDebugView** Returns an object of type GraphicsDeviceDebugView. This object contains a snapshot of the debug information of the device..

### Description

Creates an object containing debug information of the device.

It is best practice to call this function once per application instantiation. If you call this function, you must call GraphicsDevice.DeleteDebugView during application destruction. Additional resources: GraphicsDevice.UpdateDebugView.
