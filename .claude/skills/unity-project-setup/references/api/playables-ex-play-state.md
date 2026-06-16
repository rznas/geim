<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/playables-ex-play-state.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Control the play state

This example demonstrates how to use the `Pause()` and `Play()` methods to control the play state of a single node, a branch, or the entire `PlayableGraph`.

When you set the play state of a node, the state propagates to all its children, regardless of their play state. For example, if a child node is paused, setting its parent node to play sets the child node to play.

In this example, the `PlayableGraph` has a mixer that blends two animation clips. An `AnimationClipPlayable` wraps each animation clip and the `Pause()` method explicitly pauses the second playable (`clipPlayable1`). Because the second `AnimationClipPlayable` is explicitly paused, its internal time doesn’t advance and it outputs the same value. This value is the time when the `AnimationClipPlayable` was first paused.

## Prerequisites

Before you use the `ControlPlayState` script in your project, your project must have the following:

- A **GameObject**, such as a cube or a capsule. You don’t need to manually add an **Animator component** to this GameObject. The `RequireComponent` attribute adds this component if it’s not present.
- Two animation clips that animate the properties of the GameObject. For the blend between the animation clips to be noticeable, use two clips that are different from each other. For example, one clip animates the position of the GameObject while the other clip animates the rotation.

## Add and run the script

To use the `ControlPlayState` script in your project, follow these steps:

1. Add a script component to your GameObject. Name the script file `ControlPlayState.cs` and use the following code: `using UnityEngine; using UnityEngine.Playables; using UnityEngine.Animations; [RequireComponent(typeof(Animator))] public class ControlPlayState : MonoBehaviour { public AnimationClip clip0; public AnimationClip clip1; PlayableGraph graph; AnimationMixerPlayable mixer; void Start() { // Create the graph and the mixer, then bind them to the Animator. graph = PlayableGraph.Create("ControlPlayState"); mixer = AnimationMixerPlayable.Create(graph, 2); var output = AnimationPlayableOutput.Create(graph, "Animation", GetComponent<Animator>()); output.SetSourcePlayable(mixer); // Create AnimationClipPlayable playables, then connect them to the mixer. var clipPlayable0 = AnimationClipPlayable.Create(graph, clip0); var clipPlayable1 = AnimationClipPlayable.Create(graph, clip1); graph.Connect(clipPlayable0, 0, mixer, 0); graph.Connect(clipPlayable1, 0, mixer, 1); // Adjust the weight of each mixer input. mixer.SetInputWeight(0, 0.5f); mixer.SetInputWeight(1, 0.5f); // Pause the second clip playable. clipPlayable1.Pause(); // Play the Graph. graph.Play(); } void OnDisable() { // Destroy all Playables and outputs created by the graph. graph.Destroy(); } }`
2. In the Script component, select the animation clips (`clip0`, `clip1`) for the blend.
3. Select **Play** to switch the Editor to Play mode.
4. If you have installed the PlayableGraph Visualizer package, select `ControlPlayState` to display the PlayableGraph.

## Additional resources

- Animation clips
- Creating scripts
- The Pause method
- Play mode in the Game view
