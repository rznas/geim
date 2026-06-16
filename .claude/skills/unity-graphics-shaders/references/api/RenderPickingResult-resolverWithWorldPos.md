<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingResult-resolverWithWorldPos.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The callback to invoke to resolve a picking index into a GameObject reference.

The callback is invoked only if one of the picking indices rendered ends up being the topmost one under the mouse click position.

The callback is provided with a local picking index: the 0-based index that is offset from picking indices you used for rendering by subtracting RenderPickingArgs.pickingIndex, a Vector3 world position and a float depth value. This position is reconstructed from the 2D mouse position in the Scene view where the picking happened and the depth value read from the picking render texture.

The callback returns a GameObject reference from the given arguments. If you need more contextual data for the resolve callback to work, you can construct the callback as a lambda function from the render callback so that you can capture variables such as `pickingIndex` into it.

Returns null if the picking index doesn't resolve to any GameObject. This signals Unity to end the picking loop (for finding all objects under the mouse) and to start over.

Additional resources: RenderPickingResult.resolver.
