<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.Configure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manually reconfigure this GeneratorInstance with the given .

This method can only be called on nested GeneratorInstances (created by your code, not root processors) and only during system-wide reconfiguration when IsSystemWideReconfiguring is true. 

 During system-wide reconfiguration (e.g., when the sample rate changes), the realtime audio thread is suspended, making it safe to reconfigure nested processors. Calling this method at any other time will throw an exception. 

Additional resources: ControlContext.AllocateGenerator, IsSystemWideReconfiguring, Exists
