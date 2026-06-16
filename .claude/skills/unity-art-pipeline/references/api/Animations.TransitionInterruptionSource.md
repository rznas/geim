<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.TransitionInterruptionSource.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which AnimatorState transitions can interrupt the Transition.

### Properties

| Property | Description |
| --- | --- |
| None | The Transition cannot be interrupted. Formely know as Atomic. |
| Source | The Transition can be interrupted by transitions in the source AnimatorState. |
| Destination | The Transition can be interrupted by transitions in the destination AnimatorState. |
| SourceThenDestination | The Transition can be interrupted by transitions in the source or the destination AnimatorState. |
| DestinationThenSource | The Transition can be interrupted by transitions in the source or the destination AnimatorState. |
