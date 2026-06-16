<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PostProcessingPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a post-processing effect that can be applied to a visual element. This is used as part of a FilterFunctionDefinition.

### Properties

| Property | Description |
| --- | --- |
| applySettingsCallback | The optional callback to apply the pass settings to the material property block. |
| computeRequiredReadMarginsCallback | The optional callback to compute the required read margins for the effect. |
| computeRequiredWriteMarginsCallback | The optional callback to compute the required write margins for the effect. |
| material | The material to use for the effect. |
| parameterBindings | The parameter bindings for the effect. |
| passIndex | The pass index to use in the material. |
| writeMargins | The extra margins, in points, required for the effect to write to destination texture. |

### Delegates

| Delegate | Description |
| --- | --- |
| ApplyFilterPassSettingsDelegate | The optional callback to prepare the material property block for the effect. |
| ComputeRequiredMarginsDelegate | The optional callback to compute the required read and write margins for the effect. |
