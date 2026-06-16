<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.DrawPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position of the point in PhysicsWorld space. |
| radius | The radius of the point, in pixels (approximately). |
| color | The color to draw with. |
| lifetime | How long the element should be drawn for, in seconds. The default is zero indicating that it should only be drawn once. Lifetime is only used when the world is playing. |

### Description

Draw a Point. This is only used in the Unity Editor or in a Development Player. A Point is similar to a filled Circle except the radius here is specified in pixels rather than world units. See PhysicsWorld.DrawCircle.
