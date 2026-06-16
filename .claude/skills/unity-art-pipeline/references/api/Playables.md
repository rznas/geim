<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/Playables.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Playables API

Use the **Playables** API to dynamically blend animation, create gameplay mechanism, or other complex behaviors by organizing and evaluating data sources in a `PlayableGraph`.

The Playables API refers to a set of classes, structs, and methods that you use to create the PlayableGraph, its nodes, and outputs. Playables and the Playables API complement the Mecanim animation system.

The Scripting Reference on playables contains the list of classes, structs, and methods that you use to interact with animation, audio, and **scripts**. You can also create custom playables and script playables.

Use the Playables API to do the following:

- Dynamically blend animation.
- Play an **animation clip** without having to create and manage an **Animator Controller** asset.
- Dynamically create blend graphs and control blend weights.
- Dynamically add or adjust playable nodes at runtime instead of creating a complex static graph that accounts for all possible outcomes. For example, if you have a **GameObject** with animation clips for interacting with a weapon, chest, and trap, you can use playables to dynamically transition and play the appropriate animation when the GameObject is near the weapon, chest, or trap.

The following topics provide details and examples on how to use the Playables API:

| **Topic** | **Description** |
| --- | --- |
| **PlayableGraph, nodes, and output** | Describes the PlayableGraph and its main parts including the graph itself, its playable nodes, and playable outputs. |
| **ScriptPlayable and PlayableBehaviour** | Describes the `ScriptPlayable<>` object, the `PlayableBehaviour` custom behavior and how to use them together to create custom playables. |
| **Playable Director component** | Describes the Playable Director component which controls the playback and timing of a PlayableGraph. The Playable Director component is primarily used by the [Unity Timeline package](https://docs.unity3d.com/Packages/com.unity.timeline@latest). |
| **Playables API examples** | Provides example scripts that demonstrate how to use the Playables API. |

# Additional resources

- Programming in Unity
- Playable struct
- Mecanim Animation system
