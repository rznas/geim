<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Renderer-isPartOfStaticBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether the renderer is part of a static batch with other renderers.

Unity sets this flag after it generates the static batch that contains the renderer. Be aware that Unity generates static batches at different times for the Unity Player and Unity Editor:

 * **Unity Player**: Unity generates static batches for renderers in every scene at build time. This means that `Renderer.isPartOfStaticBatch` is always valid in a built application. * **Unity Editor**: Unity builds static batches for renderers in a scene only after it loads the scene in Play mode. This means that `Renderer.isPartOfStaticBatch` is only valid in the Unity Editor while in Play mode after Unity loads the scene that the renderer is in.
