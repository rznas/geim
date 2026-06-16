<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FullScreenMovieControlMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes options for displaying movie playback controls.

**Windows Store Apps**: OS doesn't provide a **Stop** button control because of this Unity will stop a video if **Escape** or **Back Button** is pressed if video is launched with FullScreenMovieControlMode.Full or FullScreenMovieControlMode.Minimal parameters.

### Properties

| Property | Description |
| --- | --- |
| Full | Display the standard controls for controlling movie playback. |
| Minimal | Display minimal set of controls controlling movie playback. |
| CancelOnInput | Do not display any controls, but cancel movie playback if input occurs. |
| Hidden | Do not display any controls. |
