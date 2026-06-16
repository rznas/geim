<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-onBeforeRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An event that is invoked every frame, on all platforms, immediately before rendering.

This callback runs as part of the frame loop on VR and non-VR platforms. It's commonly used for VR to sample input with minimal latency before rendering, but you can use it for any work that must run just before a frame is rendered.

Any work performed within this callback increases the latency between sampling input and rendering to the device. Keep the amount of work done in this callback to a minimum.
