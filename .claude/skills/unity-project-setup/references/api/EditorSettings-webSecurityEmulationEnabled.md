<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-webSecurityEmulationEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines if the Unity Editor emulates the networking security restrictions of the web player.

The emulation feature is turned on when this setting is enabled, and the active buildtarget is the webplayer. A downside of having it disabled is that the networking security restrictions also apply to the entire editor, which make certain tools that require opening listening sockets to no longer work. Only enable this if you actually want to work on your application's networking behaviour for the webplayer environment.

Note that WebPlayer is not supported from 5.4 and onwards.
