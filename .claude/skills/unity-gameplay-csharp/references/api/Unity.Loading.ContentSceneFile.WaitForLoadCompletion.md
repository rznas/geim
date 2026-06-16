<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentSceneFile.WaitForLoadCompletion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| timeoutMs | The maximum time in milliseconds this function will wait before returning. Pass 0 to block indefinitely until completion. |

### Returns

**bool** Returns false if the timeout was reached before ContentFile completed loading.

### Description

Blocks on the main thread until the load operation completes. This function can be slow and so should be used carefully to avoid frame rate stuttering.
