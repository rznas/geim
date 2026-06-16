<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.IssuePluginCustomBlit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| callback | Native code callback to queue for Unity's renderer to invoke. |
| command | User defined command id to send to the callback. |
| source | Source render target. |
| dest | Destination render target. |
| commandParam | User data command parameters. |
| commandFlags | User data command flags. |

### Description

Send a user-defined blit event to a native code plugin.
