<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.ControlContext.Manual.BeginMix.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Nullable<RealtimeContext>** A nullable RealtimeContext. This might hold no value in cases where audio is temporarily bypassed on the device, or similar. You should only Manual.EndMix if there's a non-null return from this function.

### Description

Begin a mix.

"Mixes" in Unity span a period of time where you can issue processing calls. They must be ended in pairs with a call to Manual.EndMix.
