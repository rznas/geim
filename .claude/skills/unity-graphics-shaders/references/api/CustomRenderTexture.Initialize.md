<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomRenderTexture.Initialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Initializes the Custom Render Texture at the start of the next frame. Unity calls /Initialise()/ before /CustomRenderTexture.Update/.

You can use /initialize()/ to reset a Custom Render Texture or to execute two passes after each other, where one occurs in /initialize()/ and the other in /CustomRenderTexture.Update/. When you call /initialize ()/, Unity uses the settings the Custom Render Texture has when Unity renders it. This means if you call /intialize()/ more than once when you have changed settings between calls, Unity runs the initialize render multiple times with the last settings you applied. Additional resources: Custom Render Textures.
