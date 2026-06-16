<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserSettings-artifactGarbageCollection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control whether artifact garbage collection is performed when the Editor starts up.

By default, when you start the Editor, Unity removes unused artifact files in the Library folder, and removes their entries in the Asset Database. This is a form of garbage collection. This setting allows you to turn off the Asset Database garbage collection, so that previous artifact revisions which are no longer used are still preserved after restarting the Editor. This is useful if you need to debug unexpected import results.
