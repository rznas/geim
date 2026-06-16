<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/assets-supported-types.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Supported asset type reference

Unity supports many different types of assets and most common image file types. It uses asset importers to process and convert external files into assets you can use in your project.

Unity supports the following kinds of files:

- **3D model files**: Unity supports standard and proprietary **model file** formats. Internally, Unity uses the FBX file format as its importing chain. For a list of supported files, refer to 3D model importers.
- **Image files**: Unity imports image files as textures and supports most common image file types. For a list of supported files, refer to Image importers.
- **Audio and video files**: Unity supports many audio and video file formats. For a list of supported files, refer to Audio and video importers.
- ****Shader** files**: Unity supports different shader file types depending on the graphics pipeline you’re using. For a list of supported files, refer to Shader importers.
- **Text and arbitrary data**: Unity can import arbitrary data from files such as .html, .xml, .json files, which you can use to store and use data from external sources. For a list of supported files, refer to Text and arbitrary data importers.
- **Plug-ins and code related assets**: You can add managed and native plug-ins files into your project to expand the functionality of your application, and assembly definitions to create and organize your **scripts** into assemblies. For a list of supported files, refer to Plug-ins and code importers
- **Native assets**: There are a range of asset types that are native to the Unity Editor. For a list of supported files, refer to Native asset importers.

## Asset importers

Unity uses importers to process and convert external files into assets that can be used in your project. Each file type has a corresponding importer that handles its specific requirements.

Unity supports many asset file types via its collection of built-in importers. Most of these importers are implemented in the Unity Editor’s native code. They provide the import functionality for most of Unity’s basic asset types, such as 3D models, textures, and audio files.

Most importers have a corresponding class in the `UnityEditor` namespace that exposes the same configurable import settings as the **Inspector** window for the asset type. They also have corresponding pre-process and post-process callbacks on the `AssetPostprocessor` class so you can define custom behavior to run before or after asset import. For example, the import settings for the `AudioImporter` are configurable in the Audio Clip Inspector window or from code with the `AudioImporter` class. You can also create custom pre-import or post-import behavior for audio assets with `AssetPostprocessor.OnPreprocessorAudio` and `AssetPostprocessor.OnPostprocessAudio` respectively. This pattern applies for most major asset types.

### 3D model importers

Unity uses the FBX file format as its importing chain. For a list of 3D modeling software that Unity supports, refer to Model file formats.

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **FBXImporter** | Imports 3D model files. For more information, refer to Importing a model. | `.blend` `.c4d` `.dae` `.dxf` `.fbx` `.jas` `.lxo` `.ma` `.mb` `.max` `.obj` |
| **Mesh3DSImporter** | Imports 3D Studio Max files. For more information, refer to Importing a model. | `.3ds` |
| **SketchUpImporter** | Imports SketchUp files. For more information, refer to SketchUp Import Settings and `SketchUpImporter`. | `.skp` |
| **SpeedTreeImporter** | Imports SpeedTree files. For more information, refer to SpeedTree Import Settings window and `SpeedTreeImporter`. | `.spm` `.st` |
| **SubstanceImporter** | Imports Substance files. | `.sbsar` |

### Audio and video importers

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **AudioImporter** | Imports audio files. For more information, refer to Audio files and `AudioImporter`. | `.aif` `.aiff` `.flac` `.it` `.mod` `.mp3` `.ogg` `.s3m` `.wav` `.xm` |
| **VideoClipImporter** | Imports video files. For more information, refer to Video sources and `VideoClipImporter`. | `.asf` `.avi` `.dv` `.m4v` `.mov` `.mp4` `.mpg` `.mpeg` `.ogv` `.vp8` `.webm` `.wmv` |

### Image importers

Unity imports image files as textures. Unity supports most common image file types, such as `.bmp`, `.tif`, `.tga`, `.jpg`, `.svg`, and `.psd`. For more information, refer to Import a texture.

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **IHVImageFormatImporter** | Imports specialized image formats. For more information, refer to `IHVImageFormatImporter`. | `.astc` `.dds` `.ktx` `.pvr` |
| **TextureImporter** | Imports texture files. For more information, refer to Import a texture and `TextureImporter`. | `.bmp` `.exr` `.gif` `.hdr` `.iff` `.jpeg` `.jpg` `.pct` `.pic` `.pict` `.png` `.psd` `.tga` `.tif` `.tiff` `.svg` |

### Native asset importers

There are a range of asset types that are native to the Unity Editor. You can create assets of these types using Editor features. When you create these, Unity saves the files which represent them as asset files in the `Assets` folder of your project. These include animations, curves, gradients, masks, materials, and presets.

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **NativeFormatImporter** | Imports Unity’s native asset formats. | `.anim` `.asset` `.blendtree` `.brush` `.buildreport` `.colors` `.controller` `.cubemap` `.curves` `.curvesNormalized` `.flare` `.fontsettings` `.giparams` `.gradients` `.guiskin` `.ht` `.mask` `.mat` `.mesh` `.mixer` `.overrideController` `.particleCurves` `.particleCurvesSigned` `.particleDoubleCurves` `.particleDoubleCurvesSigned` `.physicMaterial` `.physicsMaterial2D` `.playable` `.preset` `.renderTexture` `.shadervariants` `.signal` `.spriteatlas` `.state` `.statemachine` `.terrainlayer` `.texture2D` `.transition` `.webCamTexture` |
| **PrefabImporter** | Imports **prefab** files. For more information, refer to Creating prefabs. | `.prefab` |
| **VisualEffectImporter** | Imports visual effect files. | `.vfx` `.vfxblock` `.vfxoperator` |

### Plug-ins and code importers

You can add managed and native plug-ins such as `.dll` files into your project to expand the functionality of your application. Unity also supports assembly definitions to help you create and organize your scripts into assemblies.

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **AssemblyDefinitionImporter** | Imports assembly definition files. For more information, refer to Introduction to assemblies in Unity. | `.asmdef` |
| **AssemblyDefinitionReferenceImporter** | Imports assembly definition reference files. For more information, refer to Introduction to assemblies in Unity. | `.asmref` |
| **DefaultImporter** | Imports system files. | `.rsp` `.unity` |
| **PackageManifestImporter** | Imports package manifest files. For more information, refer to Package manifest. | `.json` |
| **PluginImporter** | Imports plug-in files. For more information, refer to Import and configure plug-ins and `PluginImporter`. | `.a` `.aar` `.bc` `.bundle` `.c` `.cc` `.config` `.cpp` `.dylib` `.h` `.jar` `.java` `.jslib` `.jspre` `.kt` `.m` `.mm` `.prx` `.rpl` `.so` `.suprx` `.swift` `.winmd` `.xib` |

### Shader importers

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **ComputeShaderImporter** | Imports compute shader files. For more information, refer to Writing compute shaders and `ComputeShader`. | `.compute` |
| **RayTracingShaderImporter** | Imports **ray tracing** shader files. For more information, refer to Introduction to shaders. | `.raytrace` |
| **ShaderImporter** | Imports shader files. For more information, refer to Introduction to shaders and `ShaderImporter`. | `.cg` `.cginc` `.glslinc` `.hlsl` `.shader` |

### Text and arbitrary data importers

| **Importer** | **Description** | **Supported file formats** |
| --- | --- | --- |
| **LocalizationImporter** | Imports localization files. | `.po` |
| **TextScriptImporter** | Imports text and script files. For more information, refer to Text assets. | `.boo` `.bytes` `.csv` `.fnt` `.htm` `.html` `.js` `.json` `.manifest` `.md` `.rsp` `.txt` `.xml` `.yaml` |
| **TrueTypeFontImporter** | Imports font files. For more information, refer to Font assets and `TrueTypeFontImporter`. | `.dfont` `.otf` `.ttc` `.ttf` |

### Built-in scripted importers

Scripted importers allow you to write your own custom importers for formats that Unity doesn’t natively support. Some of Unity’s own built-in importers are implemented as scripted importers because they are written in C# in core packages, rather than within the Unity Editor’s native code itself. Unity imports scripted importer assets after native importer assets.

| **Importer** | **Description** | **File formats** |
| --- | --- | --- |
| **SpeedTree9Importer** | Imports SpeedTree 9 files. For more information, refer to `SpeedTree9Importer`. | `.st9` |
| **StyleSheetImporter** | Imports Unity style sheet files. For more information, refer to Introduction to USS. | `.uss` |
| **UIElementsViewImporter** | Imports Unity XML files. For more information, refer to Structure UI with UXML. | `.uxml` |

## Additional resources

- Scripted importers
- Introduction to importing assets
- Asset metadata
- `AssetPostprocessor` API reference
