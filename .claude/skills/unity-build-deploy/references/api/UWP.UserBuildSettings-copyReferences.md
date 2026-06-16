<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UWP.UserBuildSettings-copyReferences.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this setting to copy Unity engine library references from the Unity install path to the generated solution.

Your built project requires references to Unity engine libraries. These can either be copied into your built project, or referenced from your local Unity installation path.

If you enable this setting, Unity copies those engine libraries into the built project, making the built project portable and self-contained. If you disable this setting, Unity adds links from your build to the engine libraries within your local Unity installation path, which saves disk space but makes your build depend on your local Unity installation path.
