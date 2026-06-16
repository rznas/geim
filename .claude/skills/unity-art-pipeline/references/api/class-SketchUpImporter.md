<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-SketchUpImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# SketchUp Import Settings window reference

SketchUp is software that is commonly used for architecture modeling. Unity reads SketchUp files directly and supports the following SketchUp features:

- Textures and Materials, which Unity imports according to the settings on the Materials tab.
- Component Definitions and Groups, which are converted into meshes, instanced as **GameObjects** which you can place in the **scene**.
- **Camera** data for each scene in the file.

**Tip**: For a list of known issues and limitations with importing from SketchUp, see the Limitations section below.

**(A)** You can switch between the **Sketch Up** tab and the **Materials** tab. SketchUp import settings for Materials work exactly the same way as for standard FBX Models. For reference documentation on properties on the Materials tab, see the Materials tab documentation.

**(B)** The SketchUp section provides settings that are specific to SketchUp Models.

**(C)** The Meshes section provides the same settings as those available for FBX Models.

**(D)** The Geometry section provides a subset of the settings available for FBX Models, dealing with indexing and UVs.

**(E)** Use the **Revert** button to cancel any changes you make on the SketchUp Import Settings window or **Apply** to accept the changes and continue.

## SketchUp section

To import a SketchUp file directly into Unity, drag it into the Assets folder using the Finder (macOS) or the File Manager (Windows). Then select the Asset file from the Project view inside the Unity Editor.

| **Property:** | **Function:** |
| --- | --- |
| **Generate Back Face** | Generate back-facing polygons in Unity. By default, Unity only imports the front-facing polygons to reduce polygon counts unless there is Material assigned to the back-facing polygons in SketchUp. |
| **Merge Coplanar Faces** | Merge coplanar faces when generating meshes in Unity. |
| **Unit Conversion** | Length measurement to unit conversion. The following options are available:   **Unit drop-down box** - Choose the unit to use for the conversion. Defaults to *Meters*.  **Value to convert** - This value determines how the **Scale Factor** is calculated (refer to Unit conversion below). |
| **Longitude** | Read-only value from the *Geo Coordinate* system, used to identify a position on a geographic system. |
| **Latitude** | Read-only value from the *Geo Coordinate* system, used to identify a position on a geographic system. |
| **North Correction** | Read-only value from the *Geo Coordinate* system, used to describe the angle needed to rotate North to the Z axis. |
| **Select Nodes** | Open a window where you can specify which nodes to import. A node represents an Entity, Group, or Component Instance in SketchUp. For example, if you have one file containing several couches, you can select the one you want to import. For more information, refer to Selecting SketchUpNodes below. |
| **Import Cameras** | Import cameras from your .skp file. Refer to Importing Cameras below for details. |

### Unit conversion

After conversion, 1 meter in SketchUp models equals 1 unit length in Unity.

Changing the default **Unit Conversion** values affects the scale of the imported file:

### Selecting SketchUp Nodes

Unity supports the visibility setting in the SketchUp file for each node. If a node is hidden in the SketchUp file, Unity does not import the node by default. However, you can override this behavior by clicking the **Select Nodes** button to display the SketchUp node hierarchy in the **SketchUp Node Selection Dialog** window.

Each group and component instance in the file appears in the hierarchy as a node, which you can select or deselect. When you are finished selecting the nodes to include, click the OK button to import only the checked nodes.

### Importing cameras

When Unity imports cameras from a .skp file, it converts these SketchUp camera types to the following:

| **SketchUp Camera type:** | **Unity Camera:** |
| --- | --- |
| **Parallel Projection** | Camera in orthographic mode |
| **Perspective** | Camera in perspective mode |
| **Two Point** | Physical Camera with a non-zero lens shift |

## Meshes property section

| **Property** | **Function** |
| --- | --- |
| **Mesh Compression** | Set the level of compression ratio to reduce the file size of the Mesh. When you increase the compression ratio lowers the precision of the Mesh by using the mesh bounds and a lower bit depth per component to compress the mesh data.  To optimize game size, turn Mesh Compression up as high as possible without the Mesh looking too different from the uncompressed version. The following options are available:   **Off** - Don’t use compression.  **Low** - Use a low compression ratio.  **Medium** - Use a medium compression ratio.  **High** - Use a high compression ratio. |
| **Read/Write Enabled** | When you enable this option, Unity uploads the Mesh data to GPU-addressable memory, but also keeps it in CPU-addressable memory. This means that Unity can access the Mesh data at run time, and you can access it from your scripts. For example, you might want to do this if you’re generating a Mesh procedurally, or if you want to copy some data from a Mesh.   When this option is disabled, Unity uploads the Mesh data to GPU-addressable memory, and then removes it from CPU-addressable memory.   By default, this option is enabled. In most cases, to save runtime memory usage, disable this option. For information on when to enable Read/Write Enabled, see the Mesh.isReadable API documentation. |
| **Optimize Mesh** | Determine the order in which triangles are listed in the Mesh for better GPU performance. The following options are available:   **Nothing** - No optimization.  **Everything** - Let Unity reorder the vertices and indices for both polygons and vertices. This is the default.  **Polygon Order** - Reorder only the polygons.  **Vertex Order** - Reorder only the vertices. |
| **Generate Colliders** | Enable this option to import your Meshes with **Mesh** **Colliders** automatically attached. This is useful to quickly generate a **collision** Mesh for environment geometry, but is not suitable for geometry you are moving. |

## Geometry properties section

| **Property** | **Function** |
| --- | --- |
| **Index Format** | Define the size of the Mesh index buffer. The following options are available:   **Auto** - Let Unity decide whether to use 16-bit or 32-bit indices, depending on the Mesh vertex count when it imports a Mesh. This is the default setting.  **16 bit** - Use 16-bit indices when importing a Mesh. If the Mesh is larger, then it is split into <64k vertex chunks.  **32 bit** - Use 32-bit indices when importing a Mesh. If you are using GPU-based rendering pipelines (for example with compute shader triangle culling), using 32-bit indices ensures that all Meshes use the same index format. This reduces shader complexity, because they only need to handle one format.  **Note:** For bandwidth and memory storage size reasons, you generally want to keep **16-bit** indices as default, and only use **32-bit** when necessary, which is what the **Auto** option uses. |
| **Swap UVs** | Swap UV channels in your Meshes. Use this option if your diffuse Texture uses UVs from the **lightmap**. Unity supports up to eight UV channels but not all 3D modeling applications export more than two. |
| **Generate Lightmap UVs** | Creates a second UV channel for Lightmapping. See Lightmapping for more information. |

## Limitations

- SketchUp import is not supported on Linux.
- Unity does not support GIF Textures.
- Unity imports only limited data from SketchUp Scenes.
- Unity does not support or import the following SketchUp features:
  - 2D Components (Text, dimensions)
  - Animation settings
  - Attributes
  - Drawing Styles
  - Dynamic components
  - Layers
  - Lines
  - Section Planes
  - Shadow settings
