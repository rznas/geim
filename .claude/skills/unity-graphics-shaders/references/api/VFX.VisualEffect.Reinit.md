<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect.Reinit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reintialize visual effect.

- Restores every system to its initial state.

- Resets the internal total time to zero.

- If VisualEffect.resetSeedOnPlay is true, this method recomputes a new random seed for the random value generator.

- Invokes VisualEffect.SendEvent with VisualEffect.initialEventID.
