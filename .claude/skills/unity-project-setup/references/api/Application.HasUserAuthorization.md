<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.HasUserAuthorization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Check if the user has authorized use of the webcam or microphone on iOS and WebGL.

Use this method to check the result of a previous call to Application.RequestUserAuthorization. On WebGL, the system asks users for consent to use these features every time the app is reloaded. On iOS, the system asks for consent only once and remembers the user’s choice. For all other platforms, this function always returns true.
