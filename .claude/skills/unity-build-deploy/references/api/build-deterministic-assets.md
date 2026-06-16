<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/build-deterministic-assets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Asset import determinism

A deterministic asset importer always produces the same output from the same input and set of dependencies. Non-determinism happens when the same asset file produces different import results, usually through cached import results.

When you download an import result from the cache, Unity assumes that the result is identical to the output of importing the asset locally. If you receive incorrect cached data, then you might experience inconsistent or failed builds, visual differences, or unexplained bugs. These issues are often subtle and difficult to debug because the source isn’t immediately clear.

## Non-deterministic asset importer code

A common cause of non-determinism is through any asset importers that you make with scripted importers, or `AssetPostprocessor` instances. Ensure that any scripted importers you write are deterministic. Register import dependencies, bump version numbers, and avoid creating non-deterministic `AssetPostprocessor` or `ScriptedImporter` code. For more information, refer to Import dependencies and determinism.

## Non-deterministic asset types

Some Unity Editor-generated assets are non-deterministic and can produce different binary outputs when regenerated, even with identical source data and settings.

To maintain deterministic builds, avoid regenerating these assets unless the source content changes, and keep previously baked or generated data under **version control**. Only rebuild **lightmaps**, or other baked assets when the source content changes, and not as part of every build routine.

| **Asset type** | **Behavior** |
| --- | --- |
| **Lightmaps** | Re-baking lightmaps for every build produces different binary data, even with the same lighting setup. This is because the baking system involves not only floating-point rounding but also sampling noise that can make lightmaps non-reproducible. |
| ****NavMesh**** | Build NavMeshes under identical input and environmental conditions. However, NavMeshes are sensitive to floating-point operations because Unity calculates the NavMesh based on the **scene**’s meshes. Therefore, the NavMesh might bake differently on other architectures. |
| **Generated assets based on noise sampling** | Creating assets based on sampling noise textures or other randomness can generate assets differently each time. |

## Verify deterministic assets

Before you build assets, you can confirm whether the imported assets are deterministic with the `-consistencyCheck` command-line argument. You can also use the Import Activity window to inspect re-import reasons and timestamps.

You can disable automatic artifact cleanup when analyzing imports as follows:

```
EditorUserSettings.artifactGarbageCollection = false
```

This prevents Unity from deleting previous import artifacts. Deleting the `Library` folder clears all historical import data.

### Investigate non-deterministic assets

To get more information about the non-deterministic assets in your project, inspect the Editor log file. To open the log:

1. Open the **Console** window (**Window** > **General** > **Console**).
2. Select the More menu (⋮) and select **Open Editor Log**.

The Editor log displays inconsistencies in the following format:

```
ConsistencyChecker - guid: <asset_guid>, dependenciesHash.value: <dep_hash_a>, importResultID: <result_id_a>, producedFiles[0].extension: , producedFiles[0].contentHash: <content_hash_a>
ConsistencyChecker - guid: <asset_guid>, dependenciesHash.value: <dep_hash_a>, importResultID: <result_id_b>, producedFiles[0].extension: , producedFiles[0].contentHash: <content_hash_b>
Importer(<importer_name>) generated inconsistent result for asset(<asset_guid>) <asset_path>
```

For more information, refer to Check the consistency of the import process.

## Additional resources

- Import Activity window
- Managing assets at runtime
- Command line arguments
