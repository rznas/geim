<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.OnPostRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event function that Unity calls after a Camera renders the scene.

In the Built-in Render Pipeline, Unity calls `OnPostRender` on MonoBehaviours that are attached to the same GameObject as an enabled Camera component, just after that Camera renders the scene. For a full description and code example, see MonoBehaviour.OnPostRender.

For similar functionality that does not require the script to be on the same GameObject as a Camera component, see Camera.onPostRender.

If you're using a Scriptable Render Pipeline, for example the Universal Render Pipeline, use RenderPipelineManager instead.
