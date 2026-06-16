<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableExtensions.SetLeadTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| playable | The Playable used by this operation. |
| value | The new lead time in seconds. |

### Description

Sets the Playable lead time in seconds.

`PrepareData()` is called when the lead time is greater than the Playable delay.

Additional resources: GetLeadTime, SetDelay.

Use this templated extension method on any type that inherits from IPlayable.
