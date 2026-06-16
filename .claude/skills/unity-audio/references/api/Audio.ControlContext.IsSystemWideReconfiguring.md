<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.IsSystemWideReconfiguring.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the audio system is currently performing a system-wide reconfiguration.

This property is true when the system is reconfiguring all processors due to a change in audio settings (e.g., sample rate change). During system-wide reconfiguration, the realtime audio thread is suspended, making it safe to call Configure on nested GeneratorInstances. 

 During initial processor creation (outside of system-wide reconfiguration), this will be false, so calling Configure on nested processors will fail. Use lazy initialization patterns instead (check Exists first, create if needed, only call Configure when this property is true and the nested processor already exists). 

Additional resources: Configure
