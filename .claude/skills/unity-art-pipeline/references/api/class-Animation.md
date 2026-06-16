<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-Animation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Legacy Animation component

This is the Legacy Animation component, which was used on **GameObjects** for animation purposes prior to the introduction of the Mecanim Animation system. This component is retained in Unity for backwards compatibility. For new projects, use the Animator component.

## Properties

| **Property** | **Function** |
| --- | --- |
| **Animation** | The default animation to play when **Play Automatically** is enabled. |
| **Animations** | A list of animations that you can access from **scripts**. |
| **Play Automatically** | Enable this option to play animation automatically when the game starts. |
| **Animate Physics** | Enable this option to have the animation interact with Physics. |
| **Culling Type** | Determine when not to play the animation.  **Always Animate**: Always animate.  **Based on Renderers**: Cull based on the default animation pose. |

Consult the Animation Window Guide for more information on how to create animations inside Unity. Consult Model import workflows page on how to import animated characters.
