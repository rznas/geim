<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingOutputDrawCommands-drawCommandPickingInstanceIDs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The instance IDs that are associated with the draw commands.

Unity only uses this command when it renders object-picking or selection data in the Editor, which is when BatchCullingContext.viewType is equal to BatchCullingViewType.Picking or BatchCullingViewType.SelectionOutline. Otherwise, Unity ignores this value and you can leave it set to `null`.

Each element in this array corresponds to a draw command in one of the various draw command arrays. The arrays are considered in the following order, which is the same order as they are defined in the struct:

1. The first BatchCullingOutputDrawCommands.drawCommandCount elements correspond to the draw commands in BatchCullingOutputDrawCommands.drawCommands.
2. The next BatchCullingOutputDrawCommands.indirectDrawCommandCount elements correspond to the draw commands in BatchCullingOutputDrawCommands.indirectDrawCommands.
3. The next BatchCullingOutputDrawCommands.proceduralDrawCommandCount elements correspond to the draw commands in BatchCullingOutputDrawCommands.proceduralDrawCommands.
4. The last BatchCullingOutputDrawCommands.proceduralIndirectDrawCommandCount elements correspond to the draw commands in BatchCullingOutputDrawCommands.proceduralIndirectDrawCommands.

The size of this array should be equal to the sum of BatchCullingOutputDrawCommands.drawCommandCount, BatchCullingOutputDrawCommands.indirectDrawCommandCount, BatchCullingOutputDrawCommands.proceduralDrawCommandCount, and BatchCullingOutputDrawCommands.proceduralIndirectDrawCommandCount.

See Also: BatchRendererGroup.SetPickingMaterial.
