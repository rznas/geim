<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/playables-ex-blend-clips.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Blend two animation clips

This example demonstrates how to use a `AnimationMixerPlayable` to blend two animation clips.

In this example, you select two animation clips (`clip0` and `clip1`). Before you blend the animation clips, you must wrap each `AnimationClip` in an `AnimationClipPlayable` (`clipPlayable0` and `clipPlayable1`). Use the `SetInputWeight()` method to dynamically adjust the blend weight of each playable.

You can also use a `AnimationMixerPlayable` to blend a playable clip with an animation controller.

## Prerequisites

Before you use the `BlendAnimationClips` script in your project, your project must have the following:

- A **GameObject**, such as a cube or a capsule. You don’t need to manually add an **Animator component** to this GameObject. The `RequireComponent` attribute adds this component if it’s not present.
- Two animation clips that animate the properties of the GameObject. For the blend between the animation clips to be noticeable, use two clips that are different from each other. For example, one clip animates the position of the GameObject while the other clip animates the rotation.

## Add and run the script

To use the `BlendAnimationClips` script in your project, follow these steps:

1. Add a script component to your GameObject. Name the script file `BlendAnimationClips.cs` and use the following code: `using UnityEngine; using UnityEngine.Playables; using UnityEngine.Animations; [RequireComponent(typeof(Animator))] public class BlendAnimationClips : MonoBehaviour { public AnimationClip clip0; public AnimationClip clip1; public float weight; PlayableGraph graph; AnimationMixerPlayable mixer; void Start() { // Create the graph and the mixer, then bind them to the Animator. graph = PlayableGraph.Create("BlendAnimationClips"); mixer = AnimationMixerPlayable.Create(graph, 2); var output = AnimationPlayableOutput.Create(graph, "Animation", GetComponent<Animator>()); output.SetSourcePlayable(mixer); // Create two AnimationClipPlayable playables, then connect them to the mixer. var clipPlayable0 = AnimationClipPlayable.Create(graph, clip0); var clipPlayable1 = AnimationClipPlayable.Create(graph, clip1); graph.Connect(clipPlayable0, 0, mixer, 0); graph.Connect(clipPlayable1, 0, mixer, 1); // Play the Graph. graph.Play(); } void Update() { weight = Mathf.Clamp01(weight); mixer.SetInputWeight(0, 1.0f-weight); mixer.SetInputWeight(1, weight); } void OnDisable() { // Destroy all Playables and outputs created by the graph. graph.Destroy(); } }`
2. In the Script component, select the animation clips (`clip0`, `clip1`) for the blend.
3. Specify a weight (`weight`) for both clips. The script adjusts the weight of the first clip in relation to the second clip to ensure that the weight of both clips equals 1.0. For example, a weight of 0.2 sets the second clip to 20% weight and the first clip to 80% weight.
4. Select **Play** to switch the Editor to Play mode.
5. In the Script component, experiment with different weights.
6. If you have installed the PlayableGraph Visualizer package, select `BlendAnimationClips` to display the PlayableGraph.

## Additional resources

- Animation clips
- Creating scripts
- The SetInputWeight method
- Play mode in the Game view
