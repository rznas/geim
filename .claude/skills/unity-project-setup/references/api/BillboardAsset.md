<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BillboardAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

BillboardAsset describes how a billboard is rendered.

Billboards are a level-of-detail (LOD) method of drawing complicated 3D objects in a simpler manner if they are further away. Because the object is further away, there is often less requirement to draw the object at full detail due to its size on-screen and low likelihood of being a focal point in the Camera view. Instead, the object can be pre-rendered to a texture, and this texture used on a very simple Camera-facing Mesh of flat geometry (often simply a quadrilateral) known as a billboard. At great distances an object does not significantly change its orientation relative to the camera, so a billboard looks much like the object it represents from frame to frame, without having to be redrawn from the model. The BillboardAsset class allows the creation of billboards that are rendered from several directions, allowing a BillboardAsset to efficiently represent an object at low level of detail from any approximately-horizontal viewpoint.

A BillboardAsset is usually created by importing SpeedTree assets. You can also create your own once you know how the billboard is described.

SpeedTree billboard geometry is usually more complex than a plain quadrilateral. By using more vertices to cut out the empty part of the billboard image, rendering performance can potentially be improved due to the graphics system not having to draw as many redundant transparent pixels. You have access to the geometry data via BillboardAsset.vertices and BillboardAsset.indices.

All vertices are considered in UV-space, because the geometry is due to be textured by the billboard images. UV vertices are easily expanded to 3D-space vertices by knowing the billboard's width, height, bottom, and what direction the billboard is currently facing. Assuming we have a billboard located at (0,0,0) looking at negative Z axis, the 3D-space coordinates are calculated as:

*X* = (*u* - 0.5) * *width*
 *Y* = *v* * *height* + *bottom*
 *Z* = 0


 *UV-space vertices are expanded to 3D-space vertices, with a SpeedTree billboard at (0, 0, 0) in 3D space.*

In order to display something similar to the real 3D mesh being billboarded, SpeedTree billboards select an appropriate image from several pre-rendered images according to the current view direction.


 *The eight SpeedTree billboard images are baked. The images are created by capturing the rendered image of the 3D tree at different view angles, evenly distributed around the Y-axis. The first image always starts at positive X axis direction (or 0° if you imagine a unit circle from above).*

All images should be atlased together in one single texture. Each image is represented as a Vector4 of {*left u*, *top v*, *width in u*, *height in v*} in the atlas. You have access to all the images via BillboardAsset.imageTexCoords. SpeedTree Modeler always exports a normal texture alongside the diffuse texture for even better approximation of the lighting, and it shares the same atlas layout with the diffuse texture.

Once the BillboardAsset is constructed, use BillboardRenderer to render it.

### Properties

| Property | Description |
| --- | --- |
| bottom | Height of the billboard that is below ground. |
| height | Height of the billboard. |
| imageCount | Number of pre-rendered images that can be switched when the billboard is viewed from different angles. |
| indexCount | Number of indices in the billboard mesh. |
| material | The material used for rendering. |
| vertexCount | Number of vertices in the billboard mesh. |
| width | Width of the billboard. |

### Constructors

| Constructor | Description |
| --- | --- |
| BillboardAsset | Constructs a new BillboardAsset. |

### Public Methods

| Method | Description |
| --- | --- |
| GetImageTexCoords | Get the array of billboard image texture coordinate data. |
| GetIndices | Get the indices of the billboard mesh. |
| GetVertices | Get the vertices of the billboard mesh. |
| SetImageTexCoords | Set the array of billboard image texture coordinate data. |
| SetIndices | Set the indices of the billboard mesh. |
| SetVertices | Set the vertices of the billboard mesh. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
