<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ShapeModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the ShapeModule.

Configures the initial positions and directions of particles.

Additional resources: ParticleSystem, ParticleSystem.shape.

### Properties

| Property | Description |
| --- | --- |
| alignToDirection | Align particles based on their initial direction of travel. |
| angle | Angle of the cone to emit particles from. |
| arc | Angle of the circle arc to emit particles from. |
| arcMode | The mode that Unity uses to generate particles around the arc. |
| arcSpeed | In animated modes, this determines how quickly the particle emission position moves around the arc. |
| arcSpeedMultiplier | A multiplier of the arc speed of the particle emission shape. |
| arcSpread | Control the gap between particle emission points around the arc. |
| boxThickness | Thickness of the box to emit particles from. |
| donutRadius | The thickness of the Donut shape to emit particles from. |
| enabled | Specifies whether the ShapeModule is enabled or disabled. |
| length | Length of the cone to emit particles from. |
| mesh | Mesh to emit particles from. |
| meshMaterialIndex | Emit particles from a single Material of a Mesh. |
| meshRenderer | MeshRenderer to emit particles from. |
| meshShapeType | Where on the Mesh to emit particles from. |
| meshSpawnMode | The mode to use to generate particles on a Mesh. |
| meshSpawnSpeed | In animated modes, this determines how quickly the particle emission position moves across the Mesh. |
| meshSpawnSpeedMultiplier | A multiplier of the Mesh spawn speed. |
| meshSpawnSpread | Control the gap between particle emission points across the Mesh. |
| normalOffset | Move particles away from the surface of the source Mesh. |
| position | Apply an offset to the position from which the system emits particles. |
| radius | Radius of the shape to emit particles from. |
| radiusMode | The mode to use to generate particles along the radius. |
| radiusSpeed | In animated modes, this determines how quickly the particle emission position moves along the radius. |
| radiusSpeedMultiplier | A multiplier of the radius speed of the particle emission shape. |
| radiusSpread | Control the gap between particle emission points along the radius. |
| radiusThickness | Radius thickness of the shape's edge from which to emit particles. |
| randomDirectionAmount | Randomizes the starting direction of particles. |
| randomPositionAmount | Randomizes the starting position of particles. |
| rotation | Apply a rotation to the shape from which the system emits particles. |
| scale | Apply scale to the shape from which the system emits particles. |
| shapeType | The type of shape to emit particles from. |
| skinnedMeshRenderer | SkinnedMeshRenderer to emit particles from. |
| sphericalDirectionAmount | Makes particles move in a spherical direction from their starting point. |
| sprite | Sprite to emit particles from. |
| spriteRenderer | SpriteRenderer to emit particles from. |
| texture | Specifies a Texture to tint the particle's start colors. |
| textureAlphaAffectsParticles | When enabled, the system applies the alpha channel of the Texture to the particle alpha when the particle spawns. |
| textureBilinearFiltering | When enabled, the system takes four neighboring samples from the Texture then combines them to give the final particle value. |
| textureClipChannel | Selects which channel of the Texture to use for discarding particles. |
| textureClipThreshold | Discards particles when they spawn on an area of the Texture with a value lower than this threshold. |
| textureColorAffectsParticles | When enabled, the system applies the RGB channels of the Texture to the particle color when the particle spawns. |
| textureUVChannel | When using a Mesh as a source shape type, this option controls which UV channel on the Mesh to use for reading the source Texture. |
| useMeshColors | Modulate the particle colors with the vertex colors, or the Material color if no vertex colors exist. |
| useMeshMaterialIndex | Emit particles from a single Material, or the whole Mesh. |
