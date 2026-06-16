<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/frame-debugger-window-event-information.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Frame Debugger Event Information reference

The Event Information Panel in the Frame Debugger window displays information about the event such as geometry details and the **shader** used for a draw call.

| **Label** | **Description** |
| --- | --- |
| **A** | **Render target selector**: When rendering into multiple render targets (such as multiple RenderTextures or when also rendering to depth), this specifies which render target to display in the Game view. This is useful for example to view individual render targets in a G-buffer. |
| **B** | **Color channel selector**: Specifies which color channels of the render target to display. |
| **C** | **Levels**: Controls the black and white intensity. Use this to isolate areas of the Game view based on light intensity. |
| **D** | **Output / **Mesh** Preview**: Displays a preview of the selected event output as well as the mesh geometry in the event. For more information, see Preview. |
| **E** | **Event properties**: Contains further information about the selected event. For more information, see Event properties. |

## Preview

The preview section consists of two tabs:

- The **Output** tab displays a preview of the selected event output.
- The **Mesh Preview** tab displays the mesh geometry Unity rendered in the event.

| **Label** | **Description** |
| --- | --- |
| **A** | **Preview**: A preview of the mesh geometry Unity rendered during the event. |
| **B** | **Mesh name**: The name of the mesh asset in the preview. Click on the mesh name to take see the mesh asset in the **Project window**. If the geometry was procedural and there is no mesh asset associated, this is empty (Unity displays **-**). |
| **C** | **Preview mode**: Specifies how the preview renders the mesh. For more information, refer to Preview mode dropdown. |
| **D** | **Wireframe toggle**: Toggles the mesh wireframe on and off. When enabled, the preview displays the mesh vertices and edges. |

### Preview mode dropdown

| **Value** | **Description** |
| --- | --- |
| **Shaded** | Renders the mesh using its material and a basic light. |
| **UV Checker** | Applies a checkerboard texture to the mesh to visualize how the mesh’s UV layout maps textures. |
| **UV Layout** | Displays how the vertices of the mesh are organized in the unwrapped UV layout. This view disables the Wireframe toggle. |
| **Vertex Color** | Visualizes any vertex colors that the vertices in this mesh have. If no vertices have a vertex color, this option is unavailable. |
| **Normals** | Visualizes the relative directions of the normals in the mesh with color. |
| **Tangents** | Visualizes the tangent data in the mesh with color. |
| **Blendshapes** | Visualizes blend shape deformations on the mesh. If the mesh has no blend shapes, this option is unavailable. |

## Event properties

The event properties section contains properties and values for the selected event. It has a **Details** fold-out section that contains information about the event itself and then a fold-out section for each type of shader property. If the fold-out section is grayed-out, it means that the shader in the event didn’t contain any properties of that type. For more information on the information that each section displays, see:

- Details
- Keywords
- Textures
- Ints
- Floats
- Vectors
- Matrices
- Buffers
- Constant Buffers

**Note**: When using OpenGL and GLSL shaders, this panel displays all shader properties as being part of the vertex stage.

### Details

The **Details** section displays information about the rendering event, such as the number of draw calls as well as the meshes that Unity rendered and the shader it used to render them.

| **Property** | **Description** |
| --- | --- |
| **RenderTarget** | Defines the name of the render target. |
| **Size** | Specifies the size of the render target. |
| **Format** | Defines the TextureFormat for the render target. |
| **Color Actions** | Displays the actions Unity performs on the color target when: The GPU first loads the color target. For more information, refer to RenderBufferLoadAction. The GPU finishes rendering to the color target. For more information, refer to RenderBufferStoreAction. |
| **Depth Actions** | Displays the actions Unity performs on the depth target when: The GPU first loads the depth target. For more information, refer to RenderBufferLoadAction. The GPU finishes rendering to the depth target. For more information, refer to RenderBufferStoreAction. |
| **Memoryless** | Specifies the **render texture** memoryless mode mode. For more information, refer to memoryless. |
| **ColorMask** | Defines the color channel mask Unity uses for the render target. For more information, refer to ColorMask. |
| **Blend Color** | Specifies the color blending method Unity uses during the selected event. |
| **Blend Alpha** | Specifies the alpha blending method Unity uses during the selected event. |
| **BlendOp Color** | Defines the color blending operation Blend Color Unity uses. |
| **BlendOp Alpha** | Defines the alpha blending operation Blend Alpha Unity uses. |
| **Draw Calls** | Displays the number of draw calls Unity processes during the selected event. |
| **Vertices** | Displays the number of vertices Unity processes during the selected event. |
| **Indices** | Displays the number of indices Unity processes during the selected event. |
| **Clear Color** | Specifies the color Unity uses to clear the render target during the selected event. If Unity doesn’t clear the render target, the display doesn’t show a color. |
| **Clear Depth** | Specifies the color Unity uses to clear the **depth buffer** during the selected event. If Unity doesn’t clear the depth buffer, the display doesn’t show a color. |
| **Clear Stencil** | Specifies the color Unity uses to clear the **stencil buffer** during the selected event. If Unity doesn’t clear the stencil buffer, the display doesn’t show a color. |
| **Batch cause** | Displays the reason why the SRP Batcher is unable to batch the selected rendering event with the previous rendering event.  Relevant only if your application uses the SRP Batcher. |
| **Meshes** | Displays the list of meshes that Unity renders during the selected event. |
| **Pass** | Defines the shader Pass Unity uses. |
| **LightMode** | Specifies the LightMode pass tag Unity uses during the selected event. |
| **Base Shading Rate** | Displays the shading rate fragment size Unity uses in the pass. Available only if the current platform supports variable rate shading. |
| **ShadingRateCombiners** | Displays the shading rate combiners Unity uses in the Primitive / Fragment stages. This is available only if a shading rate image is attached to the pass. |
| **Shading Rate Image** | Displays the shading rate image attachment Unity uses in the pass. |
| **Used Shader** | Specifies the shader asset Unity uses during the selected event. This can sometimes be different than the original shader, for example when the original shader uses a fallback shader or USEPASS. |
| **Original Shader** | Displays the original shader Unity uses with the pass. |
| **ZClip** | Specifies the shader’s depth clip mode. |
| **ZTest** | Specifies the shader’s depth test mode. |
| **ZWrite** | Specifies the shader’s depth clip mode. |
| **Cull** | Defines the shader’s cull mode. |
| **Conservative** | Indicates whether the shader uses conservative rasterization. |
| **Offset** | Specifies the depth bias on the GPU that Unity uses during the selected event. |
| **Stencil** | Indicates whether Stencil is enabled in the selected event. For more information, refer to Stencil. |
| **Stencil Ref** | Specifies the stencil reference value. |
| **Stencil ReadMask** | Defines the stencil readmask value Unity uses to perform the stencil test. |
| **Stencil WriteMask** | Defines the stencil writemask value Unity uses to write to the stencil buffer. |
| **Stencil Comp** | Specifies the operation the GPU performs for the stencil test for all **pixels**. |
| **Stencil Pass** | Specifies the operation the GPU performs on the stencil buffer for pixels that pass both the stencil test and the depth test. |
| **Stencil Fail** | Specifies the operation the GPU performs on the stencil buffer for pixels that fail the stencil test. |
| **Stencil ZFail** | Specifies the operation the GPU performs on the stencil buffer for pixels that pass the stencil test but fail the depth test. |

### Keywords

This section displays information about the enabled shader keywords Unity used in the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the shader keyword. |
| **Stage** | The shader stage that Unity used the shader keyword in. Refer to Stages. |
| **Scope** | Indicates whether the scope of the keyword is global or local. For more information, refer to Toggle shader keywords in a script. |
| **Dynamic** | Indicates whether the keyword is dynamic or not. For more information, see Declaring and using shader keywords in HLSL. |

### Textures

The **Texture** section displays information about the named textures Unity used during the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The property name for the texture. |
| **Stage** | The shader stage that Unity used the texture in. Refer to Stages. |
| **Size** | The size of the texture. This is the width and height for 2D textures and width, height, and depth for 3D textures, |
| **Sampler Type** | Indicates type of a Texture (such as 2D Texture, cubemap, or 3D volume texture). |
| **Color Format** | The color format that the texture uses. For more information on RenderTexture formats, see GraphicsFormat. For more information on formats for other texture types, see TextureFormat. |
| **Depth Stencil Format** | The depth stencil format for the RenderTexture. For more information, see RenderTexture.depthStencilFormat.  **Note**: If the texture isn’t a RenderTexture, Unity doesn’t display a graphics format here. |
| **Texture** | The texture name. |

### Ints

The **Ints** section displays information about the named int values Unity used during the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the int property in the shader. |
| **Stage** | The shader stage that Unity used the int property in. Refer to Stages. |
| **Value** | The value of the int property. |

### Floats

The **Floats** section displays information about the named float values Unity used during the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the float property in the shader. |
| **Stage** | The shader stage that Unity used the float property in. Refer to Stages. |
| **Value** | The value of the float property. |

### Vectors

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the vector property in the shader. |
| **Stage** | The shader stage that Unity used the vector property in. Refer to Stages. |
| **Value(R)** | The R component of the vector. |
| **Value(G)** | The G component of the vector. |
| **Value(B)** | The B component of the vector. |
| **Value(A)** | The A component of the vector. |

### Matrices

The **Matrices** section displays information about the named matrix values Unity used during the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the matrix property in the shader. |
| **Stage** | The shader stage that Unity used the matrix property in. Refer to Stages. |
| **Column 0** | The values in the first column of the matrix. |
| **Column 1** | The values in the second column of the matrix. |
| **Column 2** | The values in the third column of the matrix. |
| **Column 3** | The values in the fourth column of the matrix. |

### Buffers

The **Buffers** section displays information about the named buffers Unity used during the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the buffer in the shader. |
| **Stage** | The shader stage that Unity used the buffer in. Refer to Stages. |

### Constant Buffers

This **Constant Buffers** section displays information about the named constant buffers Unity used during the rendering event.

| **Property** | **Description** |
| --- | --- |
| **Name** | The name of the constant buffer in the shader. |
| **Stage** | The shader stage that Unity used the constant buffer in. Refer to Stages. |

### Stages

The possible values for **Stage** are:

- **vs**: Vertex Shader
- **fs**: Fragment Shader
- **gs**: Geometry Shader
- **hs**: Hull Shader
- **ds**: Domain Shader
