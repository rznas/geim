<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserSettings-desiredImportWorkerCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The desired number of processes to use when importing assets, during an Asset Database refresh.

The actual count of running worker processes may be higher or lower, but the asset pipeline aims to achieve this number of worker processes when possible. When this setting is initialized upon project creation it defaults to a percentage of logical cores as specified in the Editor preferences.
