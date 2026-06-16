<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.RegisterRenderPickingCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderPickingCallback | The delegate object to register to the callback. |

### Returns

**bool** True if the registration succeeds. False if the callback is already registered.

### Description

Registers a callback to invoke when Unity renders for picking.

Use this callback to render custom geometries on top of the existing scene objects to the picking render texture, so that the GameObjects represented by custom geometries can be picked.

Each rendering must write out a Vector4-typed `selectionId` to the picking render texture. The `selectionId` is encoded from the pickingIndex passed into the callback through the RenderPickingArgs struct using the function HandleUtility.EncodeSelectionId. You can render multiple SelectionIds in one callback if they are encoded sequentially from incrementing the `pickingIndex`, and you return the total number of rendered picking indices when returning from the callback.

Most Unity shaders have a "ScenePickingPass" pass that can be used for the rendering. Use Material.FindPass with the pass name "ScenePickingPass" to find the index of the shader pass from a Material, and use this pass index when you call APIs such as Material.SetPass. Note that you can only use render functions that are considered to take effect immediately, such as Graphics.DrawMeshNow and Graphics.DrawProceduralNow (instead of their non-immediate counterparts Graphics.DrawMesh and Graphics.DrawProcedural). The alternative is to record your rendering to a CommandBuffer object, and call Graphics.ExecuteCommandBuffer after the recording.

The picking render texture has already been bound as the active render texture when it entered the callback. You can change the active render texture during the callback, but you must restore the active render texture before exiting the callback.

Your rendering must respect the ignore and filter GameObject sets passed to the callback through the RenderPickingArgs struct argument to determine under the current context what should be rendered. Refer to RenderPickingArgs for more information.

After rendering, return a RenderPickingResult struct with the number of picking indices you used, and another callback function to invoke to resolve the picking index to a GameObject reference to be selected once the user ends up clicking on the rendered pixel under the mouse. If nothing needs to render, you can return the struct with renderedPickingIndexCount being 0, or simply RenderPickingResult.NoOperation. Refer to RenderPickingResult for more information.

The method throws `InvalidOperationException` if you try to call it inside render picking callbacks.

Additional resources: UnregisterRenderPickingCallback.
