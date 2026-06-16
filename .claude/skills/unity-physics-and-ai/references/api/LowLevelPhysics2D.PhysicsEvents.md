<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Various events that can be retrieved during and after the simulation has completed. See PhysicsWorld.Simulate and PhysicsWorld.Simulate.

### Events

| Event | Description |
| --- | --- |
| PostSimulate | Event callback for a post-simulate event. This is called after the simulation has finished running and is always called on the main-thread. See PostSimulateEventHandler. |
| PreSimulate | Event callback for a pre-simulate event. This is called prior to the simulation running and is always called on the main-thread. See PreSimulateEventHandler. |

### Delegates

| Delegate | Description |
| --- | --- |
| PostSimulateEventHandler | Event handler for a post-simulate event callback. This is called after the simulation has finished running and is always called on the main-thread. See PhysicsWorld and PhysicsEvents.PostSimulate. |
| PreSimulateEventHandler | Event handler for a pre-simulate event callback. This is called prior to the simulation running and is always called on the main-thread. See PhysicsWorld and PhysicsEvents.PreSimulate. |
