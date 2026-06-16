<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-gcIncremental.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to enable or disable incremental mode for garbage collection.

Incremental mode is a feature which tries to reduce the interruption times caused by garbage collection. When enabled, the garbage collection task is split into smaller slices which are performed incrementally instead of all at once. Instead of fewer long interruptions you will get more shorter interruptions, which could benefit the consistency of your project's frame rate and make your content run smoother. To learn more about how to judge whether this will benefit your project, see Memory in Unity.
