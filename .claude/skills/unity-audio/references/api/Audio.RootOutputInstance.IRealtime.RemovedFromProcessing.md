<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.IRealtime.RemovedFromProcessing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called potentially after a sequence of ProcessorInstance.IRealtime.Update, when a ProcessorInstance has been disposed from eg. ControlContext.Destroy.

This is a chance to sync any work done or ongoing before leaving the processing thread. This will always be called after EndProcessing.
