<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoTimeReference.InternalTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The internal reference clock the VideoPlayer observes to detect and correct drift.

The VideoPlayer relies on its own internal clock to manage the timing and playback of the video. Unity uses Time.realtimeSinceStartup as a point of reference to detect and correct any drift during playback.

This timing is separate from Unity’s global time or any system time references. This means that if you pause or change the application's Time.timeScale, the video will continue to play as normal.
