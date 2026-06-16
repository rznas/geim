<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/AnimationSection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Animation

An animation system provides tools and processes to animate the properties of models and assets. For example, use an animation system to animate transform properties to move and rotate a model, or animate the intensity property to dim a light.

Common tools include importers that import animation and models, editors that create and modify animation, and real-time animation **state machines** that determine which animation plays and when. Some animation systems also include specialized tools that define a humanoid model and retarget animation between models with the same definition.

Unity has two animation systems with different capabilities and performance characteristics:

| **Animation system** | **Description** |
| --- | --- |
| **Mecanim animation system** | The Mecanim animation system (Mecanim) is a rich and sophisticated animation system that uses the Animator component, the Animation window, and the Animator window. Mecanim is the recommended animation system for most situations. It provides better performance for complex character animation with many animation curves and blending. |
| **Legacy animation system** | Unity’s Legacy animation system (Legacy) has a limited **feature set** that predates Mecanim. Legacy uses the Animation component and the special **Legacy** import option in the Rig tab of the Import Settings window. Legacy is less complex for simple animation. Legacy is still available for backward compatibility with old Unity projects. |

## Additional resources and examples

- 👥 **Community**: [Join the conversation on Unity Discussions for Animation](https://discussions.unity.com/lists/animation)
- 📖 **E-Book**: [The definitive guide to animation in Unity](https://unity.com/resources/definitive-guide-animation-unity-2022-lts-ebook?isGated=false)
- 📖 **E-Book**: [2D game art, animation, and lighting for artists](https://unity.com/resources/2d-game-art-animation-lighting-for-artists-ebook?isGated=false)
- 📝 **How-to guide**: [How to troubleshoot imported animations in Unity](https://discussions.unity.com/t/how-to-troubleshoot-imported-animations-in-unity/371889)
- 📝 **How-to guide**: [Tips for building animator controllers in Unity](https://unity.com/how-to/build-animator-controllers)
- 📝 **How-to guide**: [How to animate 2D characters in Unity 2022 LTS](https://unity.com/how-to/2d-characters-and-animation-unity-2022-lts)
- 📺 **Video**: [How to work with humanoid animations in Unity](https://youtu.be/s5lRq6-BVcw)
