<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.OnRenderImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | A RenderTexture containing the source image. |
| destination | The RenderTexture to update with the modified image. |

### Description

Event function that Unity calls after a Camera has finished rendering, that allows you to modify the Camera's final image.

In the Built-in Render Pipeline, Unity calls `OnRenderImage` on MonoBehaviours that are attached to the same GameObject as an enabled Camera component, after the Camera finished rendering. You can use `OnRenderImage` to create a fullscreen post-processing effect. For a full description and code example, see MonoBehaviour.OnRenderImage.

`OnRenderImage` is not supported in the Scriptable Render Pipeline. To create custom fullscreen effects in the Universal Render Pipeline (URP), use the ScriptableRenderPass API. To create custom fullscreen effects in the High Definition Render Pipeline (HDRP), use a Fullscreen Custom Pass.
