<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.InvokeOnRenderObjectCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Schedules an invocation of the OnRenderObject callback for MonoBehaviour scripts.

This method triggers MonoBehaviour.OnRenderObject. Call this function to issue the OnRenderObject callback from your render pipeline. You should typically call this function after the Camera renders the Scene but before adding post-processing.
