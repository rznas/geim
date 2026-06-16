<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Playables.MaterialEffectPlayable.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| graph | The PlayableGraph object that will own the MaterialEffectPlayable. |
| material | Material used to modify linked texture playable inputs. |
| pass | Shader pass index.(Note: -1 for all passes). |

### Returns

**MaterialEffectPlayable** A MaterialEffectPlayable linked to the PlayableGraph.

### Description

Creates a MaterialEffectPlayable in the PlayableGraph.

NOTE: Each MaterialEffectPlayable input is connected to the selected Material’s texture properties (ie. texture input 0 is connected to the Material’s first texture property, texture input 1 to the second texture property, etc.)
