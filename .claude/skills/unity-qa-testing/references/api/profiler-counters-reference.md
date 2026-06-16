<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/profiler-counters-reference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Profiler counters reference

Unity has built-in profiler counters which you can use to collect and display metrics in custom Profiler modules. The following tables outline the available built-in profiler counters. This information is also available via the `ProfilerRecorder` API and in the Profiler module editor so you can add them to a custom Profiler module. The following tables contain a list of profiler counters available in Unity:

- Profiler counters reference
- File access profiler counters
- Asset loading profiler counters
- Memory profiler counters
- Physics profiler counters
- 2D Physics profiler counters
- Rendering profiler counters
  - Deprecated batching counters
- Virtual texturing profiler counters
- Additional resources

## File access profiler counters

The available file access profiler counters and availability in release (non-development) players are as follows:

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **File Bytes Read** | Total number of bytes of information Unity read from this file during the selected frames. | Unavailable |
| **File Bytes Written** | Total number of bytes of information Unity wrote to this file during the selected frames. | Unavailable |
| **File Handles Open** | The total number of file handles held open at any time during this frame. This includes files that Unity opens and closes within the same frame. | Unavailable |
| **File Reads Finished** | Number of file reads completed during this frame. | Unavailable |
| **File Reads Started** | Number of file reads started during this frame | Unavailable |
| **File Seeks** | The number of file seek operations performed in the local file system this frame. A file seek operation involves a search through the contents of a file. | Unavailable |
| **Files Closed** | The total number of files successfully closed in the local file system this frame. | Unavailable |
| **Files Opened** | The total number of files successfully opened in the local file system this frame. | Unavailable |
| **Reads in Flight** | The total number of read operations that were in progress during this frame. | Unavailable |

For more information about collecting file access data, refer to File Access Profiler module reference.

## Asset loading profiler counters

The available asset loading profiler counters and availability in release (non-development) players are as follows:

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **Audio Reads** | The number of bytes requested from the AsyncReadManager for an audio load. | Unavailable |
| **Entities Reads** | The number of bytes requested from the AsyncReadManager by **scripts** in the [Entities package](https://docs.unity3d.com/Packages/com.unity.entities@latest/). | Unavailable |
| **Mesh Reads** | The number of bytes requested from the AsyncReadManager for a **mesh** load. | Unavailable |
| **Other Reads** | The number of bytes requested from the AsyncReadManager for an unspecified subsystem. | Unavailable |
| **Scripting Reads** | The number of bytes requested from the AsyncReadManager via the scripting API. | Unavailable |
| **Texture Reads** | The number of bytes requested from the AsyncReadManager for a texture load. | Unavailable |
| **Virtual Texture Reads** | The number of bytes requested from the AsyncReadManager for Virtual Texturing. | Unavailable |

For more information about collecting asset data, refer to Asset Loading Profiler module reference.

## Memory profiler counters

The following table outlines the available memory profiler counters and availability in release (non-development) players.

**Tip:** You can use the `Object.FindObjectsByType` method to find objects of specific types, and then pass this information to `Profiler.GetRuntimeMemorySizeLong` to get their memory amount and then implement this information in release players. For example, to get the counters for Mesh Count or Mesh Memory, use `Object.FindObjectsByType<Mesh>().length` and then pass these entries to `GetRunTimeMemorySizeLong`. Only use `Find` and its related APIs in development code.

`GetRunTimeMemorySizeLong` has an impact on performance, and doesn’t provide graphics memory amounts in release builds.

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **AnimationClip Count** | The total count of loaded AnimationClips. | Unavailable |
| **AnimationClip Memory** | The total amount of memory loaded AnimationClips used in bytes. | Unavailable |
| **App Committed Memory** | The total amount of committed memory according to the operating system of the platform in bytes. | Available |
| **App Resident Memory** | The total amount of resident memory according to the operating system of the platform in bytes. | Available |
| **Asset Count** | The total number of loaded assets. | Unavailable |
| **Audio Reserved Memory** | The Audio system’s estimated reserved memory in bytes. | Available |
| **Audio Used Memory** | The Audio system’s estimated memory usage in bytes. | Available |
| **AudioClip Count** | The total count of loaded AudioClips. | Unavailable |
| **AudioClip Memory** | The total amount of memory loaded AudioClips used in bytes. | Unavailable |
| ****GameObject** Count** | The total number of GameObject instances in the **scene**. | Unavailable |
| **GC Allocated In Frame** | The total size of the managed allocations in the selected frame in bytes. | Unavailable |
| **GC Allocation In Frame Count** | The amount of managed allocations in the selected frame. | Unavailable |
| **GC Reserved Memory** | The total heap size reserved for managed code in bytes. This memory is garbage collected. | Available |
| **GC Used Memory** | The used heap size that managed code uses in bytes. This memory is garbage collected. | Available |
| **Gfx Reserved Memory** | The estimated amount of reserved memory for Textures, render targets, **Shaders**, and Mesh data in bytes. | Unavailable |
| **Gfx Used Memory** | The estimated amount of memory the driver uses on Textures, render targets, Shaders, and Mesh data in bytes. | Unavailable |
| **Material Count** | The total count of loaded materials. | Unavailable |
| **Material Memory** | The total amount of memory loaded materials used in bytes. | Unavailable |
| **Mesh Count** | The total count of loaded Meshes. | Unavailable |
| **Mesh Memory** | The total amount of memory loaded Meshes used in bytes. | Unavailable |
| **Object Count** | The number of native object instances in your application. | Unavailable |
| **Physics Used Memory** | The total amount of memory that the physics system used in bytes. | Unavailable |
| **Physics Reserved Memory(2D)** | The total amount of memory that the 2D physics system reserved in bytes. | Unavailable |
| **Profiler Reserved Memory** | The memory that the Profiler functionality reserves from the system in bytes. | Available |
| **Profiler Used Memory** | The memory that the Profiler functionality uses in bytes. | Available |
| **Scene Object Count** | The total number of dynamic `UnityEngine.Object` instances. This number includes the GameObject Count counter, plus the total number of components, and everything which isn’t an asset in the scene. | Unavailable |
| **System Total Used Memory** | The total memory used by all applications running on the device in bytes. | Available |
| **System Used Memory** | The total amount of resident memory according to the operating system of the platform in bytes. This value is the same as the **App Resident Memory** value. | Available |
| **Texture Count** | The total count of loaded textures | Unavailable |
| **Texture Memory** | The total amount of memory loaded textures used in bytes. | Unavailable |
| **Total Reserved Memory** | The total memory reserved in the operating system for your application in bytes. | Available |
| **Total Used Memory** | The total memory your application used in bytes. | Available |
| **Video Reserved Memory** | The Video system’s estimated reserved memory in bytes. | Available |
| **Video Used Memory** | The Video system’s estimated memory usage in bytes. | Available |

For more information about collecting memory data, refer to Memory Profiler module.

## Physics profiler counters

The available physics profiler counters and availability in release (non-development) players are as follows:

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **Active Constraints** | The number of primitive constraints the physics system has processed. | Unavailable |
| **Active Dynamic Bodies** | The number of Rigidbody components and `ArticulationBody` components that aren’t in a sleep state. | Unavailable |
| **Active Kinematic Bodies** | The number of active Kinematic Rigidbody components. | Unavailable |
| **Articulation Bodies** | The number of `ArticulationBody` components in the scene | Unavailable |
| **Broadphase Adds** | The total number of colliders that the broadphase algorithm added. | Unavailable |
| **Broadphase Adds/Removes** | The total number of colliders that the broadphase algorithm either added or removed. | Unavailable |
| **Broadphase Removes** | The total number of colliders that the broadphase algorithm removed. | Unavailable |
| **Colliders Synced** | The amount of colliders synced with Transforms. | Unavailable |
| **Continuous Overlaps** | The number of overlap events which Unity used continuous **collision** detection to solve. | Unavailable |
| **Discreet Overlaps** | The number of overlap events which Unity used discrete **collision detection** to solve. | Unavailable |
| **Dynamic Bodies** | The number of `Rigidbody` components and `ArticulationBody` components. | Unavailable |
| **Modified Overlaps** | The number of overlap events which Unity used the Contact Modification API to modify. | Unavailable |
| **Narrowphase Lost Touches** | The total amount of collision events that were lost since the previous frame. | Unavailable |
| **Narrowphase New Touches** | The total amount of collision events that appeared as new since the previous frame. | Unavailable |
| **Narrowphase Touches** | The total amount of collision events that were either lost or appeared as new since the previous frame. | Unavailable |
| **Overlaps** | The number of overlap events. An overlapping event is when colliders overlap with each other. | Unavailable |
| **Physics Queries** | The total amount of physics queries, such as Raycasts and shapecasts. | Unavailable |
| **Rigidbodies Synced** | The amount of Rigidbody components synced with Transforms. | Unavailable |
| **Static Colliders** | The number of colliders that don’t have a Rigidbody or ArticulationBody component | Unavailable |
| **Trigger Overlaps** | The number of overlap events with trigger colliders (counted in pairs). | Unavailable |

For more information about collecting physics data, refer to Physics Profiler module reference.

## 2D Physics profiler counters

The available 2D physics profiler counters and availability in release (non-development) players are as follows:

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **Added Contacts** | The number of contacts added in this frame. This includes both Collision and Trigger contacts. | Unavailable |
| **Asleep Bodies** | The number of Rigidbody2D that were sleeping (not awake) and present in this frame. | Unavailable |
| **Asleep Shapes** | The number of physics shapes that were sleeping (not awake) and present in this frame. | Unavailable |
| **Awake Bodies** | The number of Rigidbody2D that were awake and present in this frame. | Unavailable |
| **Awake Shapes** | The number of physics shapes that were awake and present in this frame. | Unavailable |
| **Broadphase Pairs** | The number of broadphase pairs that the physics system processed in this frame. | Unavailable |
| **Broadphase Updates** | The number of broadphase updates that the physics system processed in this frame. | Unavailable |
| **Collision Enter** | The number of OnCollisionEnter2D callbacks that the physics system called in this frame. | Unavailable |
| **Collision Exit** | The number of OnCollisionExit2D callbacks that the physics system called in this frame. | Unavailable |
| **Collision Stay** | The number of OnCollisionStay2D callbacks that the physics system called in this frame. | Unavailable |
| **Continuous Bodies** | The number of Rigidbody2D with a `Continuous` collision detection mode that were present in this frame. | Unavailable |
| **Discrete Bodies** | The number of Rigidbody2D with a `Discrete` collision detection mode that were present in this frame. | Unavailable |
| **Dynamic Bodies** | The number of Rigidbody2D with a `Dynamic` **body type** that were present in this frame. | Unavailable |
| **Dynamic Shapes** | The number of physics shapes that were both `Dynamic` and were present in this frame. | Unavailable |
| **GetContacts Queries** | The number of contact retrieval queries that the physics system called this frame. This includes queries such as `Physics2D.GetContacts`, `Collider2D.GetContacts`, and `Rigidbody2D.GetContacts`. | Unavailable |
| **IsTouching Queries** | The number of contact touching queries that the physics system called this frame. This includes queries such as `Physics2D.IsTouching`, `Collider2D.IsTouching`, and `Rigidbody2D.IsTouching`. | Unavailable |
| **Kinematic Bodies** | The number of Rigidbody2D with a `Kinematic` body type that were present in this frame. | Unavailable |
| **Overlap Queries** | The number of overlap queries that the physics system called this frame. This includes queries such as `Physics2D.OverlapPoint`, `Physics2D.OverlapCircle`, and `Collider2D.OverlapCollider`. | Unavailable |
| ****Particle** Queries** | The number of queries that the **Particle System** called in this frame. | Unavailable |
| **Raycast Queries** | The number of ray or line based queries that the physics system called this frame. This includes queries such as `Physics2D.Raycast` and `Physics2D.Linecast`. | Unavailable |
| **Removed Contacts** | The number of contacts that the physics system removed in this frame. This includes both Collision and Trigger contacts. | Unavailable |
| **Shapecast Queries** | The number of shape swept queries that the physics system called this frame. This includes queries such as `Physics2D.BoxCast`, `Physics2D.CircleCast`, and `Collider2D.Cast`. | Unavailable |
| **Solver Continuous Islands** | The number of islands solved when handling the continuous solving step. | Unavailable |
| **Solver Discrete Islands** | The number of contact islands solved when handling the discrete solving step. | Unavailable |
| **Solver Simulation Count** | The number of times Unity simulated all physics scenes automatically, or by calling `Physics2D.Simulate` or `PhysicsScene2D.Simulate`. | Unavailable |
| **Solver World Count** | The total number of physics scenes that were present in this frame. | Unavailable |
| **Static Bodies** | The number of Rigidbody2D with a `Static` body type that were present in this frame. | Unavailable |
| **Static** | The number of physics shapes that were both Static and were present in this frame. | Unavailable |
| **Total Bodies** | The total number of `Rigidbody2D` that were present in this frame. | Unavailable |
| **Total Callbacks** | The total number of `OnCollisionEnter2D`, `OnCollisionStay2D`, `OnCollisionExit2D`, OnTriggerEnter2D, `OnTriggerStay2D` and `OnTriggerExit2D` callbacks that the physics system called in this frame. | Unavailable |
| **Total Contacts** | The total number of contacts that were present in this frame. This includes both Collision and Trigger contacts. | Unavailable |
| **Total **Joints**** | The total number of any `Joint2D` that were present in this frame. | Unavailable |
| **Total Shapes** | The total number of physics shapes that were present in this frame. | Unavailable |
| **Total Queries** | The total number of queries that the physics system called this frame. This includes queries such as `Physics2D.Raycast` and `Physics2D.OverlapPoint` | Unavailable |
| **Total Transform Sync Calls** | The total number of Transform sync calls that the physics system called in this frame. | Unavailable |
| **Transform Parent Sync Bodies** | The number of Rigidbody2D that were affected by a Transform sync caused by reparenting a Transform. | Unavailable |
| **Transform Parent Sync Colliders** | The number of Collider2D that were affected by a Transform sync caused by reparenting a Transform. | Unavailable |
| **Transform Sync Bodies** | The number of Rigidbody2D that were affected by a Transform sync. | Unavailable |
| **Transform Sync Colliders** | The number of Collider2D that were affected by a Transform sync. | Unavailable |
| **Trigger Enter** | The number of OnTriggerEnter2D callbacks that were called in this frame. | Unavailable |
| **Trigger Exit** | The number of OnTriggerExit2D callbacks that were called in this frame. | Unavailable |
| **Trigger Stay** | The number of OnTriggerStay2D callbacks that were called in this frame. | Unavailable |

For more information about collecting 2D physics data, refer to 2D Physics Profiler module reference.

## Rendering profiler counters

The available rendering profiler counters and availability in release (non-development) players are as follows:

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **CPU Main Thread Frame Time** | The time between the start of the frame and the time when the Main Thread finishes the work it performs during that frame. | Available when Frame Timing Stats is enabled. |
| **CPU Render Thread Frame Time** | The time between the start of the work on the Render Thread and when Unity calls the `Present` method. | Available when Frame Timing Stats is enabled. |
| **CPU Total Frame Time** | The total CPU frame time. Unity calculates this as the time between the ends of two frames, including any overheads or time spent waiting between frames. | Available when Frame Timing Stats is enabled. |
| **Draw Calls Count** | The total number of draw calls Unity issued during a frame. | Available |
| **Hybrid Renderer (BRG) Draw Calls Count** | The number of draw calls processed by the Hybrid Renderer, also known as the BatchRendererGroup. | Available |
| **Hybrid Renderer (BRG) Indirect Draw Calls Count** | The number of indirect draw calls processed by the BatchRendererGroup. | Available |
| **Hybrid Renderer (BRG) Indirect Instances Count** | The number of instances rendered by the BatchRendererGroup via indirect calls. | Available |
| **Hybrid Renderer (BRG) Instances Count** | The number of instances rendered by the BatchRendererGroup. | Available |
| **Index Buffer Upload In Frame Bytes** | The amount of geometry that the CPU uploaded to the GPU in bytes. | Available |
| **Index Buffer Upload In Frame Count** | The amount of geometry that the CPU uploaded to the GPU in the frame. | Available |
| **Null Geometry Draw Calls Count** | The number of procedural draw calls issued. | Available |
| **Null Geometry Indirect Draw Calls Count** | The number of indirect procedural draw calls issued. | Available |
| **Null Geometry Indirect Instances Count** | The number of instances rendered by indirect procedural draw calls. | Available |
| **Null Geometry Instances Count** | The number of instances rendered by procedural draw calls. | Available |
| ****Render Textures** Bytes** | The amount of memory the RenderTextures used in bytes. | Available |
| **Render Textures Changes Count** | The number of times Unity set one or multiple RenderTextures as render targets during the frame. | Available |
| **Render Textures Count** | The number of RenderTextures Unity used during the frame. | Available |
| **SetPass Calls Count** | The number of times Unity switched which shader pass it used to render GameObjects during a frame. | Available |
| **Shadow Casters Count** | The number of GameObjects that cast shadows in a frame. If a GameObject casts multiple shadows (because multiple lights light it), it has one entry per shadow it casts. | Available |
| **SRP Batcher Draw Calls Count** | The number of draw calls that were consolidated by the SRP Batcher. | Available |
| **SRP Batcher Instances Count** | The number of instances rendered in batches consolidated by the SRP Batcher. | Available |
| **Standard Draw Calls Count** | Draw calls for standard, non-SRP compatible, non-instanced meshes rendered through the default path. | Available |
| **Standard Indirect Draw Calls Count** | The number of indirect draw calls for standard meshes through default path. | Available |
| **Standard Indirect Instances Count** | The number of instances rendered via standard indirect draw calls. | Available |
| **Standard Instanced Draw Calls Count** | The number of draw calls that used standard GPU instancing to render multiple instances of the same mesh. | Available |
| **Standard Instanced Instances Count** | The number of instances rendered using standard GPU instancing. | Available |
| **Standard Instances Count** | The number of instances rendered via the standard, non-instanced path. | Available |
| **Triangles Count** | The number of triangles Unity processed during a frame. | Available |
| **Used Buffers Bytes** | The amount of memory GPU buffers used in bytes. | Available |
| **Used Buffers Count** | The total number of GPU buffers. This includes vertex, index and compute buffers and all internal buffers required for rendering. | Available |
| **Used Textures Bytes** | The amount of memory the textures used in bytes. | Unavailable |
| **Used Textures Count** | The number of textures Unity used during the frame. | Unavailable |
| **Vertex Buffer Upload In Frame Bytes** | The amount of geometry that the CPU uploaded to the GPU in bytes. | Available |
| **Vertex Buffer Upload In Frame Count** | The amount of geometry that the CPU uploaded to the GPU in the frame. | Available |
| **Vertices Count** | The number of vertices Unity processed during the frame. | Available |
| **Video Memory Bytes** | The amount of system memory the video in your application used in bytes. | Available |
| **Visible Skinned Meshes Count** | The number of Skinned Mesh Renderers in the frame. | Available |

For more information about collecting rendering data, refer to Rendering Profiler module reference.

### Deprecated batching counters

The following rendering profiler counters for batching are deprecated and unavailable in release players.

| **Profiler counter** | **Description** | **Availability in release players** |
| --- | --- | --- |
| **Dynamic Batched Draw Calls Count** | (Deprecated) The number of draw calls Unity combined into dynamic batches. | Unavailable |
| **Dynamic Batched Triangles Count** | (Deprecated) The number of triangles in the GameObjects included in the dynamic batches. | Unavailable |
| **Dynamic Batched Vertices Count** | (Deprecated) The number of vertices in the GameObjects included in the dynamic batches. | Unavailable |
| **Dynamic Batches Count** | (Deprecated) The number of dynamic batches Unity processed during the frame. | Unavailable |
| ****Dynamic Batching** Time** | (Deprecated) The time Unity spent creating dynamic batching structures. | Unavailable |
| **Instanced Batched Draw Calls Count** | (Deprecated) The number of draw calls Unity combined into instance batches. | Unavailable |
| **Instanced Batched Triangles Count** | (Deprecated) The number of triangles in the instanced GameObjects. | Unavailable |
| **Instanced Batched Vertices Count** | (Deprecated) The number of vertices in the instanced GameObjects. | Unavailable |
| **Instanced Batches Count** | (Deprecated) The number of batches Unity processed to render instanced GameObjects during a frame (old). | Unavailable |
| **Static Batched Draw Calls Count** | (Deprecated) The number of draw calls Unity combined into static batches. | Unavailable |
| **Static Batched Triangles Count** | (Deprecated) The number of triangles in the GameObjects included in the static batches. | Unavailable |
| **Static Batched Vertices Count** | (Deprecated) The number of vertices in the GameObjects included in the static batches. | Unavailable |

## Virtual texturing profiler counters

The available virtual texturing profiler counters and availability in release (non-development) players are as follows:

| **Profiler counter** | **Description** | **Availability in release (non-development) players** |
| --- | --- | --- |
| **Atlases** | The number of virtual texture spaces or atlases (maximum of 64). | Unavailable |
| **Max Cache Demand** | The highest cache demand of all GPU caches in the selected frame. | Unavailable |
| **Max Cache Mip Bias** | The automatic mipmap bias applied to all textures with the same **texture format**. If this value isn’t zero, then the cache isn’t large enough to hold all the tiles of that format that are visible. The higher the mipmap bias, the lower the texture quality. | Unavailable |
| **Missing Disk Data** | The remaining data (in bytes) that your application needed to read from the disk to satisfy the selected frame. | Unavailable |
| **Missing Streaming Tiles** | The number of tiles that were visible on the screen but weren’t in video memory. | Unavailable |
| **Read From Disk** | The number of bytes of disk read operations that Unity completed in the selected frame. | Unavailable |
| **Required Tiles** | The number of texture tiles that were visible on screen. These are the tiles that the shaders tried to sample to render the selected frame. | Unavailable |
| **Total CPU Cache Size** | The amount of memory that Unity allocated to store texture tiles after it loaded them from disk. | Unavailable |
| **Total GPU Cache Size** | The size of all GPU caches that the Virtual Texturing module allocated in the selected frame. | Unavailable |

For more information about collecting virtual texturing data, refer to Virtual Texturing module reference.

## Additional resources

- Adding profiler counters to your code
- Customizing Profiler modules
- Profiler module editor reference
