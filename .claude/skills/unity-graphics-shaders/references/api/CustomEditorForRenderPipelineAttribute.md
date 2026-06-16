<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomEditorForRenderPipelineAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tells an Editor class which run-time type it's an editor for when the given RenderPipeline is activated.

When you make a custom editor for a component that changes based on the active RenderPipeline you need to put this attribute on the class.

Additional resources: Editor class.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| isFallback | If true, match this editor only if all non-fallback editors do not match. Defaults to false. |
