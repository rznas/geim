<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.OnPreCull.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event function that Unity calls before a Camera culls the scene.

In the Built-in Render Pipeline, Unity calls `OnPreCull` on MonoBehaviours that are attached to the same GameObject as an enabled Camera component, just before performing the culling operation that determines what that Camera can see. For a full description and code example, see MonoBehaviour.OnPreCull.

For similar functionality that does not require the script to be on the same GameObject as a Camera component, see Camera.onPreCull.

If you're using a Scriptable Render Pipeline, for example the Universal Render Pipeline, use RenderPipelineManager instead.
