<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-renderQueue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The render queue to use as an override on this material.

Use this property to override the render queue of the material, to change when Unity draws GameObjects that use the material.

Use a value of '-1' to use the default render queue value from the shader.

Note: When Unity runs in batch mode, Scriptable Render Pipelines (SRPs) are only loaded the first time something renders. Loading an SRP modifies the subshader selected for a given material, which can change the value of this property.

Additional resources: RenderQueue, Render queues and sorting behaviours in the Built-in Render Pipeline.
