<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/NVIDIA.DLSSContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the state of DLSS.

This class must be persistent, since internally it keeps track of history buffers and other important implementation details. To modify the results of DLSS, alter values in the ExecuteData property and then run GraphicsDevice.ExecuteDLSS.

### Properties

| Property | Description |
| --- | --- |
| executeData | The mutable state of the current DLSS object. |
| initData | The immutable initialization data the DLSSContext requires. |
