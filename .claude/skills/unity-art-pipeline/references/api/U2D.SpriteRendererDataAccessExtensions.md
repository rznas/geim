<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteRendererDataAccessExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A list of methods that allow the caller to override what the SpriteRenderer renders.

This feature is used mainly in the Sprite Animation feature. The SpriteSkin component gets the deformable buffer and deforms it using the skin weights and bones. After the deformation is complete, the Sprite Renderer uses it to render the Sprite instead of the Sprite's original mesh.

### Static Methods

| Method | Description |
| --- | --- |
| DeactivateDeformableBuffer | Stop using the deformable buffer to render the Sprite and use the original mesh instead. |
| GetShaderUserValue | Returns the custom value assigned to this renderer. |
| SetShaderUserValue | Assign a custom value to this renderer. |
