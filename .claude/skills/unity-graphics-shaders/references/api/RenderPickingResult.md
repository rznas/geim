<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct contains information to notify Unity the outcome of this render picking callback.

This struct type has to be returned from the RenderPickingCallback to notify Unity of:

- The number of consecutive picking indices used during the callback
- The ResolvePickingCallback delegate to invoke when the user clicks on a pixel, whose value is the `selectionId` encoded from the picking index used during the callback. Refer to resolver for more information.
- Alternatively, you can use a ResolvePickingWithWorldPositionCallback delegate if you need the world space position or the depth value for the resolve callback to work. Refer to resolverWithWorldPos.

If nothing has been rendered, return RenderPickingResult.NoOperation.

### Static Properties

| Property | Description |
| --- | --- |
| NoOperation | The constant value to be returned from RenderPickingCallback delegates signifying that nothing has been rendered. |

### Properties

| Property | Description |
| --- | --- |
| renderedPickingIndexCount | The number of consecutive picking indices used during the current RenderPickingCallback. |
| resolver | The callback to invoke to resolve a picking index into a GameObject reference. |
| resolverWithWorldPos | The callback to invoke to resolve a picking index into a GameObject reference. |

### Constructors

| Constructor | Description |
| --- | --- |
| RenderPickingResult | Constructs a RenderPickingResult value. |
