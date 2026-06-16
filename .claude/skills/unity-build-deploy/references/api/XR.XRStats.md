<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRStats.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Timing and other statistics from the XR subsystem.

Some XR SDKs provide access to additional timing and other statistics. These can be used by games and applications for profiling and dynamic performance adjustments. For example, modifying XRSettings.eyeTextureResolutionScale or XRSettings.renderViewportScale during runtime can improve performance. This class exposes a set of information that can be optionally reported by SDKs. Make sure to use the return values of any methods to know whether the data is being reported by the SDK or not.
