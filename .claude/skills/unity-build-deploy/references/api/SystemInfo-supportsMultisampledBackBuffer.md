<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-supportsMultisampledBackBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** `true` if a multi-sampled back buffer is supported.

### Description

A boolean property that indicates whether multi-sampled back buffer is supported (`true` if supported, `false` if not supported).

Multi-sampled back buffer is only supported with the Player on Android and Apple devices. If it's supported, you can select the number of samples by using Screen.SetMSAASamples.
