<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Lightmapping.Bake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the bake ran successfully. Will return false and print a warning message if it's not possible to start the bake.

### Description

Starts a synchronous bake job.

Returns when the lightmapping has finished. bakeStarted will be called when the bake starts, and bakeCompleted when it is done.
 Only works in Lightmapping.GIWorkflowMode.OnDemand mode. 
 
 For asynchronous bakes see BakeAsync.
