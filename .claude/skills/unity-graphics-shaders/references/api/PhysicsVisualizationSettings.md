<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsVisualizationSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class contains the settings controlling the Physics Debug Visualization.

Additional resources: PhysicsDebugWindow.

### Static Properties

| Property | Description |
| --- | --- |
| articulationBodyColor | Color for Articulation Bodies. |
| baseAlpha | Alpha amount used for transparency blending. |
| centerOfMassUseScreenSize | Whether or not the center of mass visualization should be constant screen space size. |
| colorVariance | Used to disinguish neighboring Colliders. |
| contactColor | Contact arrow color. |
| contactImpulseColor | ContactPoint.impulse arrow color. |
| contactSeparationColor | Contact point separation color. |
| devOptions | Shows extra options used to develop and debug the physics visualization. |
| dirtyCount | Dirty marker used for refreshing the GUI. |
| enableMouseSelect | Enables the mouse-over highlighting and mouse selection modes. |
| forceOverdraw | Forcing the drawing of Colliders on top of any other geometry, regardless of depth. |
| inertiaTensorScale | The scale by which the inertia tensor lines are multiplied. |
| kinematicColor | Color for kinematic Rigidbodies. |
| maxNumberOfQueries | The maximum number of queries that the PhysicsDebugWindow will visualize at one given time. |
| queryColor | Color that the Physics Debugger uses for query visualization. |
| rigidbodyColor | Color for Rigidbodies, primarily active ones. |
| showAllContacts | Whether the PhysicsDebugWindow visualizes all contacts. |
| showCollisionGeometry | Should the PhysicsDebugWindow display the collision geometry. |
| showContactImpulse | Whether the PhysicsDebugWindow shows ContactPoint.impulse. |
| showContacts | Whether the PhysicsDebugWindow shows contacts. |
| showContactSeparation | Whether the PhysicsDebugWindow shows contact separation. |
| sleepingBodyColor | Color for Rigidbodies that are controlled by the physics simulator, but are not currently being simulated. |
| staticColor | Color for Colliders that do not have a Rigidbody component. |
| terrainTilesMax | Maximum number of mesh tiles available to draw all Terrain Colliders. |
| triggerColor | Color for Colliders that are Triggers. |
| useContactFiltering | Whether PhysicsDebugWindow takes the PhysicsVisualizationSettings filtering settings into account when visualizing contacts. |
| useSceneCam | Controls whether the SceneView or the GameView camera is used. |
| useVariedContactColors | Whether varied colors are used for PhysicsDebugWindow contact visualization. |
| viewDistance | Colliders within this distance will be displayed. |

### Static Methods

| Method | Description |
| --- | --- |
| ClearMouseHighlight | Clears the highlighted Collider. |
| DeinitDebugDraw | Deinitializes the physics debug visualization system and tracking of changes Colliders. |
| GetQueryFilterState | Gets the query filtering state of PhysicsVisualizationSettings |
| GetShowArticulationBodies | Should Articulation Bodies be shown by the Physics Visualizer. |
| GetShowBoxColliders | Should BoxColliders be shown. |
| GetShowCapsuleColliders | Should CapsuleColliders be shown. |
| GetShowCollisionLayer | Should the given layer be considered by the display filter. |
| GetShowCollisionLayerMask | Should the mask representing the layers be considered by the display filter. |
| GetShowKinematicBodies | Should the kinematic Rigidbodies be considered by the display filter. |
| GetShowMeshColliders | Should MeshColliders be shown. |
| GetShowPhysicsSceneMask | Return a mask representing scenes that are enabled by display filter |
| GetShowRigidbodies | Should any Rigidbodies be considered by the display filter. |
| GetShowSleepingBodies | Should the sleeping Rigidbodies be considered by the display filter. |
| GetShowSphereColliders | Should SphereColliders be shown. |
| GetShowStaticColliders | Should the Colliders without a Rigidbody component be considered by the display filter. |
| GetShowTerrainColliders | Should TerrainColliders be shown. |
| GetShowTriggers | Should the triggers be considered by the display filter. |
| GetShowUnitySceneMask | Returns a mask that represents Unity scenes that are enabled by the display filter. |
| HasMouseHighlight | Returns true if there currently is any kind of physics object highlighted. |
| InitDebugDraw | Initializes the physics debug visualization system. The system must be initialized for any physics objects to be visualized. It is normally initialized by the PhysicsDebugWindow. |
| Reset | Resets the visualization options to their default state. |
| SetQueryFilterState | Sets the query filtering state of PhysicsVisualizationSettings |
| SetShowArticulationBodies | Should Articulation Bodies be shown by the Physics Visualizer. |
| SetShowBoxColliders | Should BoxColliders be shown. |
| SetShowCapsuleColliders | Should CapsuleColliders be shown. |
| SetShowCollisionLayer | Should the given layer be considered by the display filter. |
| SetShowCollisionLayerMask | Should the mask representing the layers be considered by the display filter. |
| SetShowForAllFilters | Enables or disables all filtering items. |
| SetShowKinematicBodies | Should the kinematic Rigidbodies be considered by the display filter. |
| SetShowMeshColliders | Should MeshColliders be shown. |
| SetShowPhysicsSceneMask | Should the scene mask be considered by the display filter. |
| SetShowRigidbodies | Should any Rigidbodies be considered by the display filter. |
| SetShowSleepingBodies | Should sleeping Rigidbodies and Articulation Bodies be considered by the display filter. |
| SetShowSphereColliders | Should SphereColliders be shown. |
| SetShowStaticColliders | Should the Colliders without a Rigidbody component be considered by the display filter. |
| SetShowTerrainColliders | Should TerrainColliders be shown. |
| SetShowTriggers | Should the triggers be considered by the display filter. |
| SetShowUnitySceneMask | Sets the Unity scene mask that should be considered by the filter. |
| UpdateMouseHighlight | Updates the mouse-over highlight at the given mouse position in screen space. |
