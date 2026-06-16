<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableTraversalMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Traversal mode for Playables.

### Properties

| Property | Description |
| --- | --- |
| Mix | Causes the Playable to prepare and process it's inputs when demanded by an output. |
| Passthrough | Causes the Playable to act as a passthrough for PrepareFrame and ProcessFrame. If the PlayableOutput being processed is connected to the n-th input port of the Playable, the Playable only propagates the n-th output port. Use this enum value in conjunction with PlayableOutput SetSourceOutputPort. |
