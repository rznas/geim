<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsChainDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A PhysicsChain definition used to specify the chain of vertices that will produce multiple ChainSegmentGeometry shape types. Additionally, non-geometric properties can be specified here.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsChain definition. |

### Properties

| Property | Description |
| --- | --- |
| contactFilter | The contact filter used to control which contacts this shape can participate in. |
| isLoop | Indicates a closed chain formed by connecting the first and last vertices specified. When enabled, no ghost vertices should be defined in the ChainGeometry.vertices with all being used to define ChainSegmentGeometry with the ghost vertices being calculated automatically to force a closed loop. When disabled, the ChainGeometry.vertices should define ChainSegmentGeometry.ghost1 as the first vertex followed by at least two vertices or more defining the subsequent edges and finally a ChainSegmentGeometry.ghost2 vertex, therefore there must be at least 4 vertices. |
| surfaceMaterial | The surface material for the shape comprising of many properties such as friction, bounciness, rolling resistance etc. |
| triggerEvents | Controls whether this chain produces trigger events which can be retrieved after the simulation has completed. This applies to triggers and non-triggers alike. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsChainDefinition | Create a default PhysicsChain definition. |
