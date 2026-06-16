<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-webSecurityEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether Unity's Web Player security model is enabled.

In the Web Player, this always return true. In the Unity Editor, it will return true if the web security emulation is enabled (Menu->Edit->Project Settings->Editor) and false if the emulation is disabled. On all other platforms, this returns false.

This property is read-only. You can use EditorSettings.webSecurityEmulationEnabled to set this setting in the Editor environment.

**Note:** The Web Player is obsolete.
