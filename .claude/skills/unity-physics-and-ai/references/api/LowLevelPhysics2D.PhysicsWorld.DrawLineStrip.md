<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.DrawLineStrip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The transform to use on the specified vertices. |
| vertices | The vertices defining the lines. A minimum of two vertices must be present. |
| loop | Should the first and last vertices be joined by a line? |
| color | The color to draw with. |
| lifetime | How long the element should be drawn for, in seconds. The default is zero indicating that it should only be drawn once. Lifetime is only used when the world is playing. |

### Description

Draw a set of vertices as lines joined to each other. This is only used in the Unity Editor or in a Development Player.
