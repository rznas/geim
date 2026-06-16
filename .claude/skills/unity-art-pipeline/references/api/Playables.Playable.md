<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.Playable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Playables are customizable runtime objects that can be connected together and are contained in a PlayableGraph to create complex behaviours.

Playables can be used to create complex and flexible data evaluation trees. Playables are nodes that can be connected together, after which each Playable can set the "weight" or "influence" of each of its children.

The playables of the same graph are contained in a PlayableGraph. A PlayableGraph can have several outputs, also called "players", which implement IPlayableOutput. The PlayableOutput takes the result of their source playable and apply it to an object in the Scene. For instance, the AnimationPlayableOutput is linked to a playable node in the graph (the "source playable") and to an Animator in the Scene. When the graph is played, the animation pose resulting of the graph evaluation is applied by the Animator. There are as many PlayableOutputs as there are different playable types: AnimationPlayableOutput, AudioPlayableOutput, TexturePlayableOutput, ScriptPlayableOutput, etc...

The ScriptPlayable<T> is a special kind of playable. It's main role is to be a "custom" playable. It is a templated struct where `T` must derived from PlayableBehaviour. These custom PlayableBehaviours allow to write behaviours at specific moments in the graph evaluation (see PlayableBehaviour.PrepareFrame and PlayableBehaviour.ProcessFrame). A good example of a ScriptPlayable is the TimelinePlayable which is controlling the Timeline graph. It creates and links together the playables in charge of the tracks and the clips.

When a PlayableGraph is played, each PlayableOutput will be traversed. During this traversal, it will call the PrepareFrame method on each Playable. This allows the Playable to "prepare itself for the next evaluation". It is during the PrepareFrame stage that each Playable can modify its children (either by adding new inputs or by removing some of them). This enables Playable to "spawn" new children branches in the Playable tree at runtime. This means that Playable trees are not static structures. They can adapt and change over time.

Once the preparation is done, the PlayableOutputs are in charge of processing the result, that's why they are also called "players". In the case of an AnimationPlayableOutput, the Animator is in charge of processing the graph. And in the case of a ScriptPlayableOutput, PlayableBehaviour.ProcessFrame will be called on each ScriptPlayable.

**Note:** You can use the PlayableExtensions methods on any struct implementing IPlayable.

**Note:** The Manual has detailed documentation about the Playables API.

### Static Properties

| Property | Description |
| --- | --- |
| Null | Returns an invalid Playable. |
