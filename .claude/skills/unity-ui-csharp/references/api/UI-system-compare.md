<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UI-system-compare.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Comparison of UI systems in Unity

This page provides a high-level feature comparison of UI Toolkit, uGUI, and IMGUI, and their respective approaches to UI design.

## General consideration

The following table lists the recommended and alternative UI system for runtime and Editor:

| **Unity 6.4** | **Recommendation** | **Alternative** |
| --- | --- | --- |
| **Runtime** | uGUI (Unity UI) | UI Toolkit |
| **Editor** | UI Toolkit | IMGUI |

## Roles and skill sets

Your team’s skill set and comfort level with different technologies is also an important consideration.

The following table lists the recommended system for different roles:

| **Roles** | **UI Toolkit** | **uGUI (Unity UI)** | **IMGUI** | **Skill sets** |
| --- | --- | --- | --- | --- |
| **Programmer** | ✅ | ✅ | ✅ | Programmers can use any game development tool or API. |
| **Technical Artist** | Partial | ✅ | ❌ | Technical artists who are familiar with Unity’s GameObject-based tools and workflows are likely to be comfortable working with GameObjects, Components, and the Scene view.   They might not be comfortable with UI Toolkit’s web-like approach or IMGUI’s pure C# approach. |
| **UI Designer** | ✅ | Partial | ❌ | UI designers who are familiar with UI creation tools are likely to be comfortable with UI Toolkit’s document-based approach and can use the UI Builder to visually edit their UI.  If they are not familiar with GameObject-based workflows, they might require help from programmers or level designers. |

## Innovation and development

UI Toolkit is in active development and releases new features frequently. uGUI and IMGUI are established and production-proven UI systems that are updated infrequently.

uGUI and IMGUI might be better choices if you need features that are not yet available in UI Toolkit, or you need to support or reuse older UI content.

## Runtime

UI Toolkit is an alternative to uGUI (Unity UI) if you create a screen overlay UI that runs on a wide variety of screen resolutions. Consider UI Toolkit to do the following:

- Produce work with a significant amount of user interfaces
- Require familiar authoring workflows for artists and designers
- Seek textureless UI rendering capabilities
- UI positioned and lit in a 3D world
- Advanced visuals with custom **shaders** and materials

uGUI is the recommended solution for the following:

- Easy referencing from `MonoBehaviours`

### Use Cases

The following table summarizes which system is often used for major runtime use cases:

| **Unity 6.4** | **Often used for** |
| --- | --- |
| **Multi-resolution menus and HUD in intensive UI projects** | UI Toolkit |
| **World space UI and **VR**** | UI Toolkit |
| **UI that requires customized shaders and materials** | UI Toolkit |
| **UI that requires keyframed animations** | uGUI |

### In details

The following table compares support for detailed runtime features across UI systems:

| **Unity 6.4** | **UI Toolkit** | **uGUI** |
| --- | --- | --- |
| ****WYSIWYG** authoring** | ✅ | ✅ |
| **Nesting reusable components** | ✅ | ✅ |
| **Layout and Styling Debugger** | ✅ | ✅ |
| **In-scene authoring** | ❌ | ✅ |
| **Rich text tags** | ✅ | ✅ |
| **Scalable text** | ✅ | ✅ |
| **Font fallbacks** | ✅ | ✅ |
| **Adaptive layout** | ✅ | ✅ |
| **Input system support** | ✅ | ✅ |
| **Serialized events** | ❌ | ✅ |
| **Compatible with Rendering pipelines** | ✅ | ✅ |
| **Screen-space (2D) rendering** | ✅ | ✅ |
| **World-space (3D) rendering** | ✅ | ✅ |
| **Custom materials and shaders** | ✅ | ✅ |
| **Sprites / Sprite atlas**Graphics:** A utility that packs several sprite textures tightly together within a single texture known as an atlas. . **2D:** A texture that is composed of several smaller textures. Also referred to as a texture atlas, image sprite, sprite sheet or packed texture. .  support** | ✅ | ✅ |
| **Rectangle clipping** | ✅ | ✅ |
| **Mask clipping** | ✅ | ✅ |
| **Nested masking** | ✅ | ✅ |
| **Integration with **Animation Clips** and Timeline** | ❌ | ✅ |
| **Data binding system** | ✅ | ❌ |
| **UI transition animations** | ✅ | ❌ |
| **Textureless elements** | ✅ | ❌ |
| **Advanced flexible layout** | ✅ | ❌ |
| **Global style management** | ✅ | ❌ |
| **Dynamic texture atlas** | ✅ | ❌ |
| **UI anti-aliasing** | ✅ | ❌ |
| **Right-to-left language and emoji** | ✅ | ❌ |
| **SVG support** | ✅ | ❌ |

## Editor

UI Toolkit is recommended if you create complex editor tools. It’s recommended for the following reasons:

- Better reusability and decoupling
- Visual tools for authoring UI
- Better scalability for code maintenance and performance

IMGUI is an alternative to UI Toolkit for the following:

- Unrestricted access to editor extensible capabilities
- Light API to quickly render UI on screen

### Use Cases

The following table lists the recommended system for major Editor use cases:

| **Unity 6.4** | **Recommendation** |
| --- | --- |
| **Complex editor tool** | UI Toolkit |
| ****Property drawers**** | UI Toolkit |
| **Collaboration with designers** | UI Toolkit |

### In details

The following table lists the recommended system for detailed Editor features:

| **Unity 6.4** | **UI Toolkit** | **IMGUI** |
| --- | --- | --- |
| **WYSIWYG authoring** | ✅ | ❌ |
| **Nesting reusable components** | ✅ | ❌ |
| **Global style management** | ✅ | ✅ |
| **Layout and Styling Debugger** | ✅ | ❌ |
| **Rich text tags** | ✅ | ✅ |
| **Scalable text** | ✅ | ❌ |
| **Font fallbacks** | ✅ | ✅ |
| **Adaptive layout** | ✅ | ✅ |
| **Default **Inspectors**** | ✅ | ✅ |
| **Inspector: Edit custom object types** | ✅ | ✅ |
| **Inspector: Edit custom property types** | ✅ | ✅ |
| **Inspector: Mixed values (multi-editing) support** | ✅ | ✅ |
| **Array and list-view control** | ✅ | ✅ |
| **Data binding: Serialized properties** | ✅ | ✅ |
| **Advanced flexible layout** | ✅ | ❌ |
| **Right-to-left language and emoji** | ✅ | ❌ |
| **SVG support**. | ✅ | ❌ |

## Additional resources

- Migrate from uGUI to UI Toolkit
- Migrate from IMGUI to UI Toolkit
