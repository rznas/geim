<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.FrameData-effectivePlayState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The accumulated play state of this playable.

The effective play state is the accumulated play state of the playable and its ancestors. For example, a playable can be set to the Playing play state, but if its parent is Paused, then its effective play state is Paused.
