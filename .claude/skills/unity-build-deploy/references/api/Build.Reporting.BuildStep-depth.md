<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.BuildStep-depth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The nesting depth of the build step.

The build process is broken down into steps, and steps may themselves be broken down into sub-steps recursively. The nesting depth indicates how many higher-level build steps enclose this step. The step that represents the overall build process has depth 0, the sub-steps of that step have depth 1, and so on.
