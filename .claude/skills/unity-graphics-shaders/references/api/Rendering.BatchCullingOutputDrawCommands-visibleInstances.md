<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingOutputDrawCommands-visibleInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The indices of visible instances to render.

Because each draw command can have a different number of instances, BatchRendererGroup stores the instance indices here, and each draw command indexes them with the visibleOffset property. The instance indices are zero-based indices that Unity passes directly to the shader which should use the value to determine where to load instance data from.

The culling callback must allocate the memory for this command using UnsafeUtility.Malloc with the Allocator.TempJob parameter. Unity releases this memory when it finishes rendering the draw commands.

The visible instance indices only use the least significant 24 bits for the actual instance index and use the highest 8 bits for the LOD crossfade factor. In a future version of BatchRendererGroup, this restriction will only apply to draw commands which actually set the LODCrossFade flag. This will enable you to use all 32 bits which is useful if you want to encode data directly into the index.
