<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-applicationIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The application identifier for the currently selected build target.

Currently supported by Android, iOS, tvOS and macOS.
 **Changing this only sets the identifier for the currently active platform.** Use PlayerSettings.SetApplicationIdentifier and PlayerSettings.GetApplicationIdentifier to set and retrieve it for a specific platform. EditorUserBuildSettings.SwitchActiveBuildTarget can be used to set the active platform while running the editor, but does not work in batch mode. If running the editor from batch mode you can change the active platform by launching it with this argument: '-buildTarget platform'.
