<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UpgradeGuideUnity64.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Upgrade to Unity 6.4

This page lists changes in Unity 6.4 (6000.4) that can affect existing projects when you upgrade them from Unity 6.3 (6000.3) to Unity 6.4 (6000.4).

Review changes for Unity 6.4 in these areas:

- Assets and media
- Graphics
- Optimization
- Platforms
- XR

## Assets and media

This section outlines recent updates to assets and media that can affect your upgrade experience.

### Changed import artifact dependencies in the Asset Database

In the Asset Database, artifact dependencies now only trigger a reimport of dependent assets when the dependency’s import result (artifact) actually changes, rather than whenever its source input changes. This change significantly reduces unnecessary reimports.

Previously, any reimport of a dependency triggered reimports of all dependent assets, even if the import produced an identical result. With the new narrower artifact dependency, some `ScriptedImporter` or `AssetPostprocessor` classes might no longer run because they previously relied on reimports that are no longer triggered.

For more information on this change, refer to the [Narrowing Artifact Dependencies in Unity 6.4 Discussions post](https://discussions.unity.com/t/narrowing-artifact-dependencies-in-unity-6-4/1690877).

If changes to an asset don’t propagate through your project as expected, but manually reimporting fixes the issue, you might need to add explicit dependencies. To resolve missing dependencies, use the following APIs:

- `AssetImportContext.DependsOnSourceAsset`
- `AssetImportContext.DependsOnArtifact`

#### Resolve a missing dependency on the source asset

If your importer uses both the imported result and the source file of another asset, you must register both dependencies. Registering only an artifact dependency is no longer enough.

For example, the following script loads an imported asset and also reads its source file directly, so it must register both an artifact dependency and a source asset dependency:

```
[ExampleScriptedImporter(1, "example")]
public class ExampleScriptedImporter : ScriptedImporter
{
    public string otherAssetPath; // Path to another asset used during the import

    public override void OnImportAsset(AssetImportContext ctx)
    {
        ctx.DependsOnArtifact(otherAssetPath);
        var myObj = AssetDatabase.LoadAssetAtPath<MyScriptableObject>(otherAssetPath);

        var sourceData = File.ReadAllLines(otherAssetPath);

        // Generate output based on myObj and sourceData
        // ...

        // Fix missing dependency
        ctx.DependsOnSourceAsset(otherAssetPath);
    }
}
```

#### Resolve a missing dependency on an indirect artifact

When you have a chain of asset dependencies and your post-processor uses an artifact from earlier in the chain, you must declare a **direct dependency** on that asset.

For example, if you have:

- `Model.fbx`
- `Variant.prefab` (variant of `Model.fbx`)
- `Nest.prefab` (prefab nesting `Variant.prefab`)

If an `AssetPostprocessor` for `Nest.prefab` accesses **mesh** data from `Model.fbx`, it must register an artifact dependency on `Model.fbx`. Previously, changes to the mesh triggered a reimport of `Nest.prefab` through the chain of dependencies. Now, if the change doesn’t affect the output of `Variant.prefab` (such as moving a vertex in a mesh), `Nest.prefab` won’t be reimported unless you explicitly declare the dependency.

The following script accesses mesh data from a model nested within a **prefab** variant, so it must register a direct artifact dependency on the asset containing the mesh:

```
public class Example : AssetPostprocessor
{
    void OnPostprocessPrefab(GameObject g)
    {
        // Post-processor for prefab nesting variant
        // Mesh from a model
        var mesh = g.GetComponent<MeshFilter>().sharedMesh;

        // Import result changed using mesh
        // ...

        // Fix missing dependency
        var meshPath = AssetDatabase.GetAssetPath(mesh);
        var meshGUID = AssetDatabase.GUIDFromAssetPath(meshPath);
        context.DependsOnArtifact(meshGUID);
    }
}
```

### Changed OnDisable behavior

Unity now correctly invokes `OnDisable` callbacks on components of a **GameObject**’s descendants when you destroy a GameObject using `Object.Destroy`.

Previously, `OnDisable` was only invoked for components on the GameObject itself and its direct children. This change makes `Object.Destroy` behavior consistent with `Object.DestroyImmediate`, which has always invoked `OnDisable` across the entire hierarchy.

If you added workarounds to manually propagate `OnDisable` to deeper descendants, they will now cause duplicate calls and must be removed.

## Graphics

This section outlines recent updates to graphics that can affect your upgrade experience.

### Removed URP Compatibility Mode

URP Compatibility Mode is now fully removed for custom render passes. The `URP_COMPATIBILITY_MODE` scripting define you could previously use to convert your project has also been removed. Use the render graph system for your custom render passes instead.

### Changed SRP Core Physics dependency and volumes

Previously, the SRP Core package had a hard dependency on `com.unity.modules.physics`. This is now a soft dependency.

- `com.unity.modules.physics` is still enabled by default in Unity projects, but it may now be explicitly disabled. However, if you disable the module, local volumes will no longer work.
- Packages that use Physics and depend on SRP Core must now explicitly declare a dependency on `com.unity.modules.physics`, rather than relying on SRP Core to bring it transitively.
- The `IVolume` interface is now removed. If you have custom volume types, implement volume visualization using the new `VolumeGizmoDrawer` class.

### Changed LightShadowCasterMode enum naming

The following updates have been made in the `LightShadowCasterMode` enum:

- `NonLightmappedOnly` has been renamed to `ShadowMask`.
- `Everything` has been renamed to `DistanceShadowMask`.

Your **scripts** will be automatically updated to rename the enum and related variables.

## Optimization

This section outlines recent updates to optimization that can affect your upgrade experience.

### Migrated Project Auditor into Editor

The Project Auditor package is now included in the Unity Editor by default. You no longer need to install it as a separate package.

As part of this change, some APIs are now internal, including `CodeModuleInstructionAnalyzer`, `InstructionAnalysisContext`, and related types. If your project uses custom code analyzers that depend on these APIs, they no longer work in this version.

These APIs are now internal because they expose implementation details of a specific code analysis technology. A few other APIs were also made internal, but these aren’t expected to affect most projects.

If this change affects your project, submit a bug report to request support. You can embed a renamed version of the package in your project to continue using the previous version.

## Platforms

This section outlines recent updates to platform-specific tools and settings that can affect your upgrade experience.

### iOS

This section outlines recent updates to iOS-specific tools and settings.

#### Changed runtime libraries for Apple platforms

The Unity runtime libraries for iOS, iPadOS, tvOS, and visionOS are now aligned for both device and simulator builds. This update introduces several key changes:

- Runtime libraries for devices are now wrapped into a static library framework, updating the path from `XcodeFolder/Libraries/<Unity Runtime Lib>` to `XcodeFolder/Frameworks/UnityRuntime.framework/UnityRuntime`.
- For simulator builds, the `UnityRuntime.framework` is now static instead of dynamic.
- Unity native code optimization for simulators matches the behavior of device builds.

This alignment ensures the libraries are of the same type and at the same path for both device and SDK. If your build pipeline includes **post-processing** scripts that rely on the previous library paths, you might need to update them.

## XR

This section outlines recent updates to XR that can affect your upgrade experience.

### Deprecated HoloLens 2 support

Deprecated support for HoloLens 2 as a platform and the HoloLens 2 **plug-in**. If your project targets HoloLens 2, migrate to the [OpenXR plug-in](https://docs.unity3d.com/Packages/com.unity.xr.openxr@latest/).

## Additional resources

- New in Unity
- Upgrade Unity
- System requirements
- Install Unity
- Upgrade your Unity project
