<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.Lightmapping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface to the light baking backends.

### Static Methods

| Method | Description |
| --- | --- |
| GetDelegate | Get the currently set conversion delegate. |
| ResetDelegate | Resets the light conversion delegate to Unity's default conversion function. |
| SetDelegate | The delegate for converting a list of lights into LightDataGI structures for light baking backends. |

### Delegates

| Delegate | Description |
| --- | --- |
| RequestLightsDelegate | Delegate called when converting lights into a form that the baking backends understand. |
