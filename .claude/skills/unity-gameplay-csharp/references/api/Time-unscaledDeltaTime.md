<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-unscaledDeltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The timeScale-independent interval in seconds from the last frame to the current one (Read Only).

When called from inside MonoBehaviour's MonoBehaviour.FixedUpdate, it returns the unscaled fixed framerate delta time.

Unlike Time.deltaTime this value is not affected by Time.timeScale.

See Time and Frame Rate Management in the User Manual for more information about how this property relates to the other Time properties.

**Note**: On Android platforms, Time.unscaledDeltaTime may return very small values on the first frame after the application resumes from a paused or unfocused state. This can occur when very little real time has elapsed between frames. This behavior is expected and transient. Scripts should account for this when relying on Time.unscaledDeltaTime.
