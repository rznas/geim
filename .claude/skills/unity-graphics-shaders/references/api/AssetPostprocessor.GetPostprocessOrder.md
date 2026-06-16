<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.GetPostprocessOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the execution order priority for this asset postprocessor.

Override this method to control the execution order of multiple asset postprocessors. Return an integer value where lower values are processed first.

The default implementation returns 0. Postprocessors with negative values run before the default, and positive values run after.

This method doesn't affect the execution order of AssetPostprocessorOnPostprocessAllAssets callbacks, which use dependency attributes instead.
