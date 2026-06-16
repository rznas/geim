<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-maximumDeltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum value of Time.deltaTime in any given frame. This is a time in seconds that limits the increase of Time.time between two frames.

When a very slow frame happens, maximumDeltaTime limits the value of Time.deltaTime in the following frame to avoid undesirable side-effects from very large deltaTime values.

 The recommended value depends on the desired characteristics of your application when frame hitches occur. maximumDeltaTime has these practical effects:

- Bounds the maximum number of times Unity executes MonoBehaviour.FixedUpdate in a frame to maximumDeltaTime / fixedDeltaTime.
- Sets a limit on the value of Time.deltaTime which is commonly used to drive dynamic parts of the application like player movement. This controls whether and how much the application stutters or speeds up after a frame hitch.

A low value of maximumDeltaTime might prevent a long series of frame hitches in applications with long MonoBehaviour.FixedUpdate phases. In these cases, a long frame causes multiple executions of FixedUpdate phases in the following frame, which causes another long frame and so on.

**Important:** Unity enforces that maximumDeltaTime is always at least as large as Time.fixedDeltaTime.

See Time and Frame Rate Management in the User Manual for more information about how this property relates to the other Time properties.
