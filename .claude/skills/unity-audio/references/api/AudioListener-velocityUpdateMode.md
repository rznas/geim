<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioListener-velocityUpdateMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This lets you set whether the Audio Listener should be updated in the fixed or dynamic update.

Make sure this is set to update in the same update loop as the Audio Listener is moved in if you are experiencing problems with Doppler effect simulation. The default setting will automatically set the listener to be updated in the fixed update loop if it is attached to a rigidbody, and dynamic otherwise.
