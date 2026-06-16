<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-renderQueue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default render queue for this shader. (Read Only)

Since different Render Pipelines require different render passes a shader's render queue depends on the active Render Pipeline. Note: When Unity runs in batch mode, Scriptable Render Pipelines (SRPs) are only loaded the first time something renders. Loading an SRP modifies the subshader selected for a given material, which can change the value of this property.

Additional resources: RenderQueue, Render queues and sorting behaviours in the Built-in Render Pipeline.
