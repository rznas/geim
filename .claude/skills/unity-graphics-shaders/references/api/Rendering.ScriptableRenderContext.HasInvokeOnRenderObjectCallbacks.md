<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.HasInvokeOnRenderObjectCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if there are OnRenderObject callbacks false if none.

### Description

Check if any objects in the scene have OnRenderObject callbacks registered.

You can use this function to check if InvokeOnRenderObjectCallback will actually call any callbacks. This can be usefull to avoid calling InvokeOnRenderObjectCallback. It als means no arbitrary code will run in the callbacks that could change graphics state. This can help your renderpipeline to avoid doing unececarry graphics state changes before/after the callbacks.
