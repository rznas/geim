<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/optimizing-draw-calls-choose-method.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Choose a method for optimizing draw calls

Use draw call optimization if the CPU sends too many draw calls to the GPU, which is also known as being CPU-bound. For more information about draw calls, refer to Introduction to optimizing draw calls.

## Check the number of draw calls

To check if your **scene** sends too many draw calls, do any of the following:

- Open the Rendering Statistics window and check the **Set Pass calls** value.
- Open the Profiler and select the **Rendering** section to display the number of draw calls.
- Check the number of draw calls in the Frame Debugger.

## Choose optimization methods

The supported and recommended methods for optimizing draw calls depend on whether you use the Universal **Render Pipeline** (URP), the High Definition Render Pipeline (HDRP), or the Built-In Render Pipeline (BIRP).

| **Feature** | **Type** | **Multithreaded** | **Recommendation in URP** | **Recommendation in HDRP** | **Recommendation in the Built-In Render Pipeline** |
| --- | --- | --- | --- | --- | --- |
| **Scriptable Render Pipeline (SRP) Batcher** | Reduces render state updates | DX12, Vulkan, and compatible console APIs only, if you enable Graphics Jobs. | Enable. Refer to SRP Batcher in URP. | Enable. Refer to SRP Batcher in HDRP | Not supported |
| **GPU Resident Drawer** | Uses GPU hardware instancing | Yes | Enable. Refer to GPU Resident Drawer in URP. | Enable. Refer to GPU Resident Drawer in HDRP | Not supported |
| **`BatchRendererGroup` (BRG) API** | Uses GPU hardware instancing | Yes | Use the GPU Resident Drawer instead, except for advanced use cases. | Use the GPU Resident Drawer instead, except for advanced use cases. | Not supported |
| **GPU Instancing checkbox in materials** | GPU hardware instancing | No | Disable, to avoid extra **shader** variants. | Disable, to avoid extra shader variants. | Enable if you have many instances or lights. Refer to GPU Instancing. |
| **Batching** | Combines meshes | No | Disable. **Static batching** isn’t compatible with the BRG API or GPU Resident Drawer. | Disable. Static batching isn’t compatible with the BRG API or GPU Resident Drawer. | Enable static batching. **Dynamic batching** is no longer recommended. Refer to Batching. |

If you have many instances or lights, you can also use optimize mesh rendering using level of detail (LOD).

To get the best results from any draw call optimization method, do the following:

- Use the same materials for different **GameObjects** as much as possible.
- If you want to render the same **mesh** with different properties, for example different colors, use Material Variants instead of multiple materials.
- Avoid using the `MaterialPropertyBlock` API in URP and HDRP.

## Use multiple optimization methods

You can use multiple draw call optimization methods in the same scene, but each GameObject uses only some methods depending on its mesh and shader.

If you enable all the features in the table, Unity does the following:

- Static meshes: combines the meshes with static batching.
- Dynamic meshes with a compatible shader: uses the SRP Batcher with the GPU Resident Drawer or the BRG API.
- Remaining meshes with a compatible shader: uses GPU Instancing.
- Remaining meshes: uses dynamic batching.

## Additional resources

- Shader variants
- [Fantasy Kingdom in Unity 6](https://unity.com/demos/fantasy-kingdom), which uses the GPU Resident Drawer.
- [SRP Batcher: Speed up your rendering](https://unity.com/blog/engine-platform/srp-batcher-speed-up-your-rendering)
- [BatchRendererGroup sample: Achieve high frame rate even on budget devices](https://unity.com/blog/engine-platform/batchrenderergroup-sample-high-frame-rate-on-budget-devices)
- [Megacity Metro](https://unity.com/demos/megacity-competitive-action-sample), which uses the BatchRendererGroup API to render a large number of objects.
