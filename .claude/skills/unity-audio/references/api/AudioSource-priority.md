<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioSource-priority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the priority of the AudioSource.

Unity virtualizes AudioSources when the number of active AudioSources exceeds the limit set by your project's maximum real voices. Real voices are audio sources that are audible in the scene. When Unity virtualizes an AudioSource, it mutes the source while tracking its playback position and state, allowing it to resume playback if its priority or volume becomes higher than another audio source. Unity virtualizes AudioSource instances with the lowest priority first. If two sounds have the same priority, Unity virtualizes the one with the lower volume. Priority is an integer between 0 (highest priority) and 256 (lowest priority).

To change the value of the maximum number of real or virtual voices:

1. In the menu go to **Edit** > **Project Settings** > **Audio**.
2. Set **Maximum Real Voices** and **Maximum Virtual Voices** to your preferred values

**WebGL:** This setting doesn't affect WebGL because there is no limit on the number of audio channels in the WebGL platform.
