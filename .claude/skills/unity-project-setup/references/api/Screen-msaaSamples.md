<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-msaaSamples.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the requested MSAA sample count of the screen buffer.

Gets the sample count last requested by SetMSAASamples. This value might be different from the actual sample count that Unity uses for the render target during this frame, since Unity does not update the number of samples immediately. Depending on when in the frame you access this property, it might return the sample count of the current frame or the next frame. If the graphics API does not support the value provided, it uses the next highest supported value.
