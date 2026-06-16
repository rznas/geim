<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL.IssuePluginEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventID | User defined id to send to the callback. |
| callback | Native code callback to queue for Unity's renderer to invoke. |

### Description

Send a user-defined event to a native code plugin.

Rendering in Unity can be multithreaded if the platform and number of available CPUs will allow for it. When multithreaded rendering is used, the rendering API commands happen on a thread which is completely separate from the one that runs the scripts. Consequently, it is not possible for your plugin to start rendering immediately, since it might interfere with what the render thread is doing at the time.

In order to do any rendering from the plugin, you should call GL.IssuePluginEvent from your script, which will cause your native plugin to be called from the render thread. For example, if you call GL.IssuePluginEvent from the camera's OnPostRender function, you'll get a plugin callback immediately after the camera has finished rendering.

Callback must be a native function of "void UNITY_INTERFACE_API UnityRenderingEvent(int eventId)" signature.

See Native Plugin Interface for more details and an example.

Additional resources: SystemInfo.graphicsMultiThreaded.
