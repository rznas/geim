<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.GeneratorInstance.IControl_1.Configure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| realtime | In case of reconfiguration, the is temporarily suspended from processing, and you can safely modify its properties. |
| context | The ControlContext associated with this call. |
| format | The format you're being suggested to use, for optimal performance. You must initialize to either this or a value of your choosing. |
| properties | Additional properties you can set, or leave as default. |
| setup | Out parameter where you must configure the sample rate and AudioSpeakerMode this GeneratorInstance must run at. The system enforces this to be true for you, and anyone using this GeneratorInstance will handle conversion to another AudioFormat if needed. |

### Description

Called to configure the GeneratorInstance before it is used, and when the audio system reconfigures. A default implementation will set the and based on the .

Additional resources: ControlContext.GetConfiguration, GeneratorInstance.Configuration
