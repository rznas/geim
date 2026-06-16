<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.IRealtime.EarlyProcessing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**void** Optionally an async dependency that will be fed into every other RootOutputInstance.IRealtime

### Description

Perform any tasks necessary before any other resource managed by this RootOutputInstance is being used by anything else.

For instance, a GeneratorInstance hardware input may sample its data here once, and that would then be available afterwards without changing for this mixing update.
