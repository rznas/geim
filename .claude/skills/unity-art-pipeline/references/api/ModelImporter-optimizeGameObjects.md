<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-optimizeGameObjects.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animation optimization setting.

In the GameObjects hierarchy of a character, the GameObjects which only contain Transform component, will be optimized out unless they are specified in extraExposedTransformPaths for better CPU performance. The remaining GameObjects hierarchy will be flattened.
