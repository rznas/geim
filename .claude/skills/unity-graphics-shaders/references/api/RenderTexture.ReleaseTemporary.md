<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.ReleaseTemporary.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Release a temporary texture allocated with GetTemporary.

Later calls to GetTemporary will reuse the RenderTexture created earlier if possible. When no one has requested the temporary RenderTexture for a few frames it will be destroyed.

Additional resources: GetTemporary function.
