<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorUpdateMode.Normal.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animator updates in the Update loop, aligning with the main game loop for standard animation processing.

The Normal mode is suited for most general animations that are not critically dependent on precise timing with physics. It processes animations during the regular Update phase, which is synchronized with the rendering of frames, ensuring animations are updated at the frame rate of the game, providing consistent visual results.
