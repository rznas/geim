<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.Manual.Update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Update and submit any queued commands found on ControlContext, making them available to the mixing functionality functions.

This also performs general maintenance and disposes ProcessorInstances asynchronously. This must currently not be called while a mix is ongoing (ControlContext.Manual can currently only be used from one thread). This is called automatically on ControlContext.builtIn as a part of the normal Unity audio system update. 

Additional resources: UpdateAudio
