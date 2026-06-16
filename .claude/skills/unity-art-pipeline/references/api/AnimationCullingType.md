<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationCullingType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This enum controlls culling of Animation component.

When culling is enabled, Unity might stop animating if it thinks that the results of the animation won't be visible to the user. This could save you some performance if you have things animating outside of the viewport, whose animation is only important when the user can actually see the thing that is being animated. When Animation component is culled it won't do anything: it won't update animation states, execute events or sample animations.

### Properties

| Property | Description |
| --- | --- |
| AlwaysAnimate | Animation culling is disabled - object is animated even when offscreen. |
| BasedOnRenderers | Animation is disabled when renderers are not visible. |
