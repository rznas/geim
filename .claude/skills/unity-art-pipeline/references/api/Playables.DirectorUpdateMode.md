<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.DirectorUpdateMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines what time source is used to update a Director graph.

### Properties

| Property | Description |
| --- | --- |
| DSPClock | Update is based on DSP (Digital Sound Processing) clock. Use this for graphs that need to be synchronized with Audio. |
| GameTime | Update is based on Time.time. Use this for graphs that need to be synchronized on gameplay, and that need to be paused when the game is paused. |
| UnscaledGameTime | Update is based on Time.unscaledTime. Use this for graphs that need to be updated even when gameplay is paused. Example: Menus transitions need to be updated even when the game is paused. |
| Manual | Update mode is manual. You need to manually call PlayableGraph.Evaluate with your own deltaTime. This can be useful for graphs that are completely disconnected from the rest of the game. For example, localized bullet time. |
