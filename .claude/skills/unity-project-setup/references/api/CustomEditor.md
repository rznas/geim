<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tells an Editor class which run-time type it's an editor for.

When you make a custom editor for a component, put this attribute on the editor class.

To set which `Editor` classes are active for the current Render Pipeline Asset, add a SupportedOnRenderPipelineAttribute underneath the attribute.

Additional resources: Editor class, SupportedOnRenderPipelineAttribute.

### Properties

| Property | Description |
| --- | --- |
| isFallback | If true, match this editor only if all non-fallback editors do not match. Defaults to false. |

### Constructors

| Constructor | Description |
| --- | --- |
| CustomEditor | Defines which object type the custom editor class can edit. |
