<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource.PlayDelayed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| delay | Delay time specified in seconds. |

### Description

Plays the clip with a delay specified in seconds. Users are advised to use this function instead of the old Play(delay) function that took a delay specified in samples relative to a reference rate of 44.1 kHz as an argument.

**Note:** This function replaces the Play(delay) function when called with the delay-argument. In that function the delay had to be specified as samples relative to a reference rate of 44100. This is inconvenient when the engine is running on a different sample rate and the source sound has an even different rate. Working with delays specified in seconds makes this independent of these.
