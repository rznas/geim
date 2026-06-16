<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Lightmapping.BakeAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetScene | The Scene to generate lighting data for. |

### Returns

**bool** Returns true if Unity successfully starts the lighting bake job. Returns false if Unity does not successfully start the lighting bake job.

### Description

Starts an asynchronous lighting bake job for the target Scene.

Unity generates lighting data for the target Scene only, but Lights, Renderers, Terrains and emissive Materials from all open Scenes contribute to the lighting. Note that Renderers and Terrains contribute to the lighting only if their StaticEditorFlags.ContributeGI flag is enabled.
 
 Unity calls bakeStarted when it starts the bake, and bakeCompleted when it completes the bake. You can monitor the progress of the bake using the isRunning property. If Unity cannot start the bake, it prints a warning to the console.
 
 Note that Unity only performs the bake if Lightmapping.giWorkflowMode is set to Lightmapping.GIWorkflowMode.OnDemand. If this is not the case, this function immediately returns false.
 
 For synchronous bakes see Bake.
 
 Additional resources: Scene.
