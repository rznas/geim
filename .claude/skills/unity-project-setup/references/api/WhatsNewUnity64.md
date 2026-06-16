<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/WhatsNewUnity64.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# New in Unity 6.4

Unity 6.4 (6000.4) introduces several new features and improvements.

To read about all of the changes and known issues in this version of Unity, refer to the [Unity 6.4 Release Notes](https://unity.com/releases/editor/whats-new/6000.4.0#notes).

To find the release notes for other releases, refer to the [Unity download archive](https://unity.com/releases/editor/archive).

To watch a video summary of the new features and improvements in this release, refer to the official [What’s New in Unity 6.4 video](https://youtu.be/5tb0cAWHzDQ).

To read about changes made to packages that were updated as part of this release, refer to the documentation of those packages.

If you’re upgrading existing projects from Unity 6.3 (6000.3), refer to Upgrade to Unity 6.4 for information about how your project might be affected.

Review the new features and improvements for Unity 6.4 in these areas:

- 2D
- Animation
- Editor and workflow
- Entities
- Graphics
- Input System
- Optimization
- Platforms
- Programming
- Terrain
- UI Toolkit

## 2D

This section outlines recent updates to Unity’s 2D system.

### Custom rendering and post-processing

If your project uses the Universal **Render Pipeline** (URP), you can now customize and extend the rendering process in a 2D project. Create a custom render pass in a C# script and inject it into the URP frame rendering loop. For more information, refer to Custom rendering and post-processing for 2D in URP.

### Create sprite atlases at runtime

You can now create **sprite** atlases at runtime using the new `SpriteAtlasManager.CreateSpriteAtlas` API. For more information about sprite atlases, refer to Sprite atlas.

## Animation

This section outlines recent updates to Unity’s animation system.

### Evaluate entry transitions when starting a state machine

State machines can now start in a non-default state. This behavior stops the one-frame delay the animator needs to transition from its default state to another state.

To enable this option, in the **Animator Controller**, select **Evaluate Entry Transitions On Start**. This option is true by default for new controllers, and false by default for existing ones.

## Editor and workflow

This section outlines recent updates to the Editor’s general workflows and user interface.

### Build Profiles UI improvements

The ****Build Profiles**** window now includes the following improvements:

- Added an option to hide the platform list in the **Build Profiles** window for enhanced usability. For new projects, the platform list in the **Build Profiles** window is hidden by default displaying only the build profiles. To display the platform list, disable the **Hide Classic Platforms** setting in **Project Settings** > **Editor** > **Build Profiles**.
- Reorganized the **Platform Browser** window by grouping related platforms together for easier discovery. The platforms are now grouped into categories such as mobile, desktop, **XR**, web, console, industry, and servers.

### Dynamic overlay panels

In the **Scene** view, you could already dock overlays in corners or as **toolbars**. You can now dock overlays in dynamic panels to further customize your workspace.

Dynamic panels are collapsible and flexible dockable areas on either side of the **Scene view** window between the **viewport** and the edge of the window. You can resize a dynamic panel, and inside it you can stack and reorder overlays in a single dock zone. Use a dynamic panel to group related overlays together for specific tasks and avoid cluttering the Scene view.

To make docking more intuitive and efficient, layout states (panel, horizontal, or vertical) aren’t preserved when an overlay docks in a dynamic panel. The overlay adapts to the layout of the dynamic panel.

To highlight which dock zones are available to an overlay in the Scene view, drag an overlay.

To save your overlay configurations to reuse in other projects, refer to Create and manage overlay presets.

### Improved grid and snap workflow

Improved the Scene view’s grid and snap workflow:

- Added custom position and rotation to the grid.
- Redesigned the Grid and Snap overlay.
- Consolidated multiple Grid and Snap dropdown menus into a single **Grid and Snap Settings** menu.
- Added the **Grid** tool handle rotation.
- Separated **Grid size** and **Incremental Snap Size** settings.
- Added Scene view context menu Grid submenu.
- Added Grid and Snap shortcuts.

To discuss these changes, go to [Feature Highlight: Improved Grid and Snap workflows](https://discussions.unity.com/t/feature-highlight-improved-grid-and-snap-workflows/1695070) on Unity Discussions.

#### Added custom grid position and rotation

Added custom position and rotation to the grid. You can now transform the grid by applying a selected **GameObject**’s handle’s position and rotation to the grid or by entering specific position and transform values.

Absolute grid snapping works well for levels composed of rectangular areas aligned to grid lines. However, if your level elements are rotated (such as angled bridges or pathways), absolute grid snapping might be less useful. In this case, set a position and rotation for the grid to make it more useful.

To add custom position and rotation to the grid:

1. In the **Grid and Snap** overlay, select **Open Grid and Snap settings**.
2. In the **Grid and Snap Settings** window, under **Grid Transform**, enter position and rotation values. If you want the grid to copy a selected GameObject’s position and rotation values, select **Copy from Active Object**.

#### Redesigned Grid and Snap overlay

Redesigned the **Grid and Snap** overlay to make it clearer and quicker to access. Made the following changes to the **Grid and Snap** overlay:

- Updated the overlay so it now displays the active snapping mode and its snapping values.
- Moved commonly used settings such as **Incremental Snapping size** from dropdown menus directly to the overlay.

To access the **Grid and Snap** overlay, press ` to open the **Overlay menu** and select **Grid and Snap**.

#### Consolidated Grid and Snap settings

Consolidated multiple Grid and Snap dropdown menus into a single **Grid and Snap Settings** menu. This new menu contains all grid and snapping settings.

To access the new **Grid and Snap Settings** menu, select **Open Grid and Snap settings** in the **Grid and Snap** overlay.

#### Added Grid Tool Handle rotation setting

Use the **Grid** Tool Handle Rotation to ensure that the tool’s handle rotation is aligned to the grid’s rotation. Note that if the handle is not aligned to the grid, the snapping behavior falls back to incremental snapping.

To enable the **Grid** Tool Handle Rotation, in the **Tool Settings** overlay, select **Grid** in the Tool Handle Rotation setting dropdown.

#### Separated grid size and incremental snap size settings

You can now set **Grid Size** and **Incremental Snap Size** in two separate settings in the **Grid and Snap** overlay rather than in one setting. This functionality was restored based on user feedback.

#### Added Scene view context menu Grid submenu

Added the **Grid** submenu to the Scene view context menu which contains quality-of-life grid settings.

For example, you can select:

- **Move to Handle Position** to set the grid at the handle’s location. This can be useful for manipulating non-GameObject objects such as points.
- **Reset to World** to reset the grid back to the world origin position and clear its rotation.

To access the **Grid** submenu of the Scene view context menu, select a GameObject in the Scene view and right-click.

#### Added Grid and Snap shortcuts

Grid and Snap workflow improvements contain new shortcuts you can customize. You can customize these shortcuts in the **Shortcuts** window.

## Entities

This section outlines recent updates to the Entities system.

### Entity Component System as Core packages

The Entities, Collections, Mathematics, and Entities Graphics packages are implemented in Unity 6.4 as Core packages. These packages ship with the Editor, which allows the development team to integrate the Entity Component System (ECS) into the engine more quickly. This setup supports the [ECS for Unity](https://unity.com/ecs) initiative and ships the features faster and more incrementally.

### InstanceID replaced by EntityId

Unity 6.4 replaces the `InstanceID` property with a new `EntityId` type.

`EntityId` becomes the preferred type for identifying objects in Unity and `InstanceID` methods are marked as deprecated.

For more information, refer to the `EntityId` API documentation.
 For more information about this change, refer to the following post on Unity Discussions: [ECS Development Status - December 2025](https://discussions.unity.com/t/ecs-development-status-december-2025/1699284).

`EntityId` can’t be represented by a single `int` value, so there are assumptions you should avoid. For example, the following behaviors might not work:

- Casting `EntityId` to and from an `int` type.
- Relying on positive or negative values for checking if `EntityId` represents an asset-loaded object.
- Using the `Object.GetHashCode` method to get an `EntityId`.
- Using the `ToString` method to serialize into a string, and using `int.Parse` to get it.
- Sorting by `EntityId` to sort by creation order.
- Storing state in the first bit of the `EntityId` (in `InstanceID`, this bit was unused).

## Graphics

This section outlines recent updates to Unity’s graphics systems.

### Redesigned Rendering Statistics window

The Rendering Statistics window has been renovated and displays more useful metrics for analyzing the rendering complexity of the scene in Play mode. You can now inspect the number of draw calls optimized by the Scriptable Render Pipeline (SRP) Batcher, the GPU Resident Drawer, the `BatchRendererGroup` API, and GPU instancing. The window also displays more accurate frame time metrics. For more information, refer to Rendering Statistics window reference.

### Preview Mesh LOD meshes and transitions

Debugging and previewing **Mesh** LODs in the Scene view is now easier. The **Gizmo** menu lets you toggle Scene view labels that display the active **LOD** level of GameObjects. The Mesh LOD ****Inspector**** window also now includes a selection bar, which you can drag to display the LOD level the **camera** renders at each ratio. For more information, refer to Mesh LOD.

### PowerVR Texture Compression (PVRTC) has been removed

You can no longer target the PVRTC **texture format** when you import a texture. Use the ASTC or ETC texture formats instead. For more information, refer to GPU texture formats reference.

### URP Compatibility Mode is fully removed

URP Compatibility Mode is now fully removed for custom render passes. The `URP_COMPATIBILITY_MODE` scripting define symbol that you could previously use to convert your project has also been removed. Use Render Graph for your custom render passes instead.

### Improved Render Graph samples

The Render Graph samples have been improved by including the latest APIs and covering more use cases.

### Render Pipeline Converter changes

The UI of the Render Pipeline Converter for URP has been redesigned and improved. You can also now use the Render Pipeline Converter to convert **shaders** from the Built-In Render Pipeline to HDRP.

### Volumetric Lighting Density Cutoff for HDRP fog

In HDRP, you can now use **Volumetric Lighting Density Cutoff** to disable fog lighting below a specified density. This allows you to improve performance in scenes with lots of fog volumes. For more information, refer to Fog Volume Override reference and Troubleshoot fog.

### Improved PSO tracing and warming

Added new functions to the `GraphicsStateCollection` API to improve PSO tracing and warming. You can now modify existing PSO collections without needing to re-trace the collection. You can also now generate new `GraphicsStates` from Mesh and Material arrays.

For more information about PSO tracing and warming with the `GraphicsStateCollection` API, refer to Tracing and warming up PSOs and the `GraphicsStateCollection` API documentation.

### New Terrain Properties node in Shader Graph

Shader Graph now includes a Terrain Properties node that allows you to pass input properties from the actively rendered Terrain into the Contexts of a Terrain Lit shader graph.

## Input System

This section outlines recent updates to Unity’s Input System.

### OnMouse behavior for the Input System package

MonoBehaviour **scripts** working with the Input System now support the mouse events `OnMouseDown`, `OnMouseDrag`, and `OnMouseUp`.

You can use these events to migrate existing mouse events from **Input Manager** to Input System.

## Optimization

This section outlines recent optimization updates.

### Adaptive Performance

This section outlines recent updates to Unity’s Adaptive Performance features.

#### Custom scaler workflow improvements

Improved the workflow for Adaptive Performance with a redesigned UI for managing custom scalers. You can now add, remove, and configure your ScriptableObject-based scalers directly in a scaler profile in the Editor.

For more information, refer to Create custom scalers and Adaptive Performance provider settings reference.

#### Basic provider extended to consoles

Extended the Basic provider to support the following consoles:

- PlayStation®4
- PlayStation®5
- Xbox One
- Xbox Series X|S

You can now use Adaptive Performance features, such as automatic performance scaling and bottleneck detection, on these console platforms.

### Disable the physics module to reduce build size

To reduce the file size of your build, you can now disable the built-in `com.unity.modules.physics` module in the Package Manager window.

**Note**: If you use local volumes in your project, keep the `com.unity.modules.physics` module enabled for these volumes to work.

For more information, refer to Reducing the file size of a build.

### Project Auditor package migration

The Project Auditor package is now part of the Unity Editor by default. To learn more, refer to the Project Auditor section of the Unity manual.

To use the Project Auditor in Unity versions 6.3 and earlier, you can use the Project Auditor package. To learn more, refer to the Project Auditor package documentation.

## Platforms

This section outlines recent updates to platform-specific tools and settings.

### Windows

This section outlines recent updates to the Windows platform.

#### DirectStorage support

Unity now supports Microsoft’s DirectStorage for file I/O operations, providing faster asset loading and reduced CPU overhead. DirectStorage is used for loading specific asset types, such as textures, meshes, and entities asset data in DOTS projects. This feature optimizes performance of your application by utilizing high-speed storage drives more efficiently when loading these assets. For more information, refer to Optimize performance using DirectStorage.

### Embedded Linux and QNX

This section outlines recent updates to the Embedded Linux and QNX platforms.

#### Windowing API improvements

The `Windowing` API is enhanced to detect and respond to any change in the game window position and resolution at runtime on Embedded Linux and QNX platforms.

The `GameWindow` class provides two ways to monitor window changes:

- Use `PositionChangedThisFrame` and `ResolutionChangedThisFrame` methods to detect any changes in position or resolution of the GameWindow during the current frame.
- Use the callback registration methods `RegisterPositionChangedCallback` and RegisterResolutionChangedCallback to register functions that are invoked when position or resolution of the GameWindow changes at the end of each frame.

You can use these approaches to execute custom application logic when the game window changes occur at runtime.

### Web platform

This section outlines recent updates to the Web platform.

#### Enabled multithreading for Burst-compiled jobs

You can now enable multithreading for Web builds by using the Burst compiler. C# jobs marked with the `[BurstCompile]` attribute compile into highly optimized native code that runs in parallel on background worker threads. Jobs without this attribute continue to run on the main thread.

For more information, refer to Multithreading with Burst in Unity Web.

#### Added support for Microphone API

Added support for the `Microphone` API to the Web platform. You can now capture audio from a user’s microphone in your web applications, enabling features like in-game voice chat or voice commands.

For more information, refer to the `Microphone` API documentation and Audio in Web.

#### PSO tracing and warming for WebGPU

Added support for the `GraphicsStateCollection` API for WebGPU. To learn more, refer to Introduction to PSO tracing and warming.

## Programming

This section outlines recent updates to the Programming system.

### Serialization

For any custom class assigned to a field marked with the `[SerializeReference]` attribute, Unity now validates that the class and all of its ancestors in the class hierarchy are decorated with the `[Serializable]` attribute. If the `[Serializable]` attribute is missing from any ancestor of the class assigned to a `[SerializeReference]` field, then the Unity Editor issues a warning. For more information, refer to Serialization rules.

### Create graph tools with Unity Graph Toolkit

Unity Graph Toolkit provides a comprehensive framework for developing node-based tools within the Unity Editor. It enables you to create your own graph tool with custom nodes while providing all the UI components to add, connect, and manipulate these nodes on a canvas. This allows you to focus on implementing domain-specific functionality rather than handling UI concerns.

To learn more, refer to Extending the Editor with Graph Toolkit.

## Terrain

### Terrain Layers drag and drop support

Added drag and drop support to Terrain Layers in the **Inspector** window or the Scene view.

Previously, to add a Terrain Layer, you had to open the Paint Texture tool in the **Inspector** window and select **Edit Terrain Layers**, then **Add Terrain Layer** and select a layer. Now, you can drag a Layer asset onto the Terrain in the Paint Texture tool area, Scene view, or in the **Hierarchy** window.

### Terrain material drag and drop support

Added drag and drop support to Terrain for materials.

Previously, you had to go to the **Settings** tab in the **Inspector** window to assign material to Terrain. Now, you can drag and drop a material asset onto the Terrain in the Scene view. If the material doesn’t have the Terrain Compatible attribute, a warning displays in the **Inspector** window and the console.

## UI Toolkit

This section outlines recent updates to Unity’s UI Toolkit.

### Default theme in Project Settings

You can now set a default Editor and runtime UI preview theme for your project in the ****Project Settings**** window. This project-wide setting can be pushed through **version control**. Changing the preview theme in UI Builder automatically updates your local preference.

### Drag and drop UXML and USS into UI Builder

You can now drag and drop UXML and USS files into UI Builder:

- Drag UXML files from the **Project** window or your operating system file browser to the **Hierarchy** or **Canvas** window, following UI Builder’s insertion rules.
- Drag USS files from the **Project** window or your operating system file browser to the **Stylesheet** hierarchy.

## Additional resources

- New in Unity
- Upgrade Unity
- System requirements
- Install Unity
