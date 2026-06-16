<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Lightmapping.BakeAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the bake was successfully started. Will return false and print a warning message if it's not possible to start the bake.

### Description

Starts an asynchronous bake job.

The progress can be monitored via isRunning property. bakeStarted will be called when the bake starts, and bakeCompleted when it is done.
 Only works in Lightmapping.GIWorkflowMode.OnDemand mode. 
 
 For synchronous bakes see Bake.
