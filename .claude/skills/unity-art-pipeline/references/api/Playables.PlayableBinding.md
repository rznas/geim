<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct that holds information regarding an output of a PlayableAsset.

PlayableAssets specify the type of outputs it supports using PlayableBindings.

Do not create PlayableBinding objects directly. Use the provided built-in methods to create the corresponding PlayableOutput. For example, to create a PlayableBinding for an AnimationPlayableOutput, use AnimationPlayableBinding.Create. To create a PlayableBinding for a ScriptPlayableOutput, use ScriptPlayableBinding.Create.

### Static Properties

| Property | Description |
| --- | --- |
| DefaultDuration | The default duration used when a PlayableOutput has no fixed duration. |
| None | A constant to represent a PlayableAsset has no bindings. |

### Properties

| Property | Description |
| --- | --- |
| outputTargetType | The type of target required by the PlayableOutput for this PlayableBinding. |
| sourceObject | A reference to a UnityEngine.Object that acts a key for this binding. |
| streamName | The name of the output or input stream. |
