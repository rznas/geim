<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

API for accessing the content of AssetBundle files.

This class exposes an API, via static methods, for loading and managing AssetBundles.

This same class offers non-static methods and properties that expose the contents of a specific loaded AssetBundle, including the ability to load an Asset from within an AssetBundle.

Create AssetBundles by calling BuildPipeline.BuildAssetBundles or using the Addressables package. The build process generates one or more AssetBundle files, and each AssetBundle file contains a serialized instance of this class.

Additional resources: Intro to AssetBundles, UnityWebRequestAssetBundle.GetAssetBundle, BuildPipeline.BuildAssetBundles.

```csharp
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;public class SampleBehaviour : MonoBehaviour
{
    IEnumerator Start()
    {
        var uwr = UnityWebRequestAssetBundle.GetAssetBundle("https://myserver/myBundle.unity3d");
        yield return uwr.SendWebRequest();        // Get an asset from the bundle and instantiate it.
        AssetBundle bundle = DownloadHandlerAssetBundle.GetContent(uwr);
        var loadAsset = bundle.LoadAssetAsync<GameObject>("Assets/Players/MainPlayer.prefab");
        yield return loadAsset;        Instantiate(loadAsset.asset);        bundle.Unload(true);
    }
}
```

**Scenes inside AssetBundles**

- An AssetBundle can contain scenes or assets, but not a mix of both types.
- AssetBundle.LoadAsset, and the other Load methods, do not support loading scenes from AssetBundles.
- Scenes can be loaded from AssetBundles using the SceneManager. When running in the Player, or Play mode in the Editor, first load the AssetBundle containing scenes. Then call SceneManager.LoadScene or SceneManager.LoadSceneAsync with the scene path or name.
- When the Editor is in Edit mode, it does not support loading scenes from AssetBundles. Calls to EditorSceneManager.OpenScene with the path of a scene inside a loaded AssetBundle fail and log an error stating that the scene file is not found.

```csharp
//This example shows how to build a scene into an AssetBundle, and then build a Player with that AssetBundle included.
//When the Player starts it loads the scene and then unloads after a few seconds.
//
//To try this example:
// - Save it into a file, for example "Assets/AssetBundleSceneLoader.cs".  The source file name needs to match the name of the MonoBehaviour.
// - From the Editor Menu select "Example" / "Scene in AssetBundle Example".
//
//It is also possible to try it in Play mode in the Editor:
// - Run the menu at least once to create the scenes and AssetBundle
// - Open "Assets/Scenes/StartingScene.unity"
// - Enter Play modeusing System.IO;
using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;#if UNITY_EDITOR
using UnityEditor;
using UnityEditor.Build.Reporting;
using UnityEditor.SceneManagement;
#endifpublic class Constants
{
    // Scene in the project that is intended for an AssetBundle
    public static readonly string SceneForAssetBundle = "Assets/Scenes/SceneForBundle.unity";    // Scene for the Player build that contains the "AssetBundleSceneLoader" MonoBehaviour
    public static readonly string StartingSceneForPlayer = "Assets/Scenes/StartingScene.unity";    // Note: AssetBundles are always created lower case
    public static readonly string AssetBundleFileName = "scenebundle";    // Path for AssetBundle (relative to the StreamingAsset location)
    public static readonly string AssetBundlePath = "/AssetBundles";    // Output directory for the player build (Relative to project and not inside Assets)
    public static readonly string PlayerBuildPath = "PlayerBuild";    // Name of the player executable inside PlayerBuildPath
    public static readonly string PlayerExecutable = "PlayerBuild";
}#if UNITY_EDITOR
// Note: Typically this would be in its own source file, in an Editor-only assembly.
public class BuildBundleWithScene
{
    [MenuItem("Example/Scene in AssetBundle Example")]
    public static void BuildAssetBundle()
    {
        // Location inside StreamingAssets so the AssetBundle content is included in the Player
        string AssetBundleBuildPath = Application.streamingAssetsPath + Constants.AssetBundlePath;        // Create the content expected by this example
        CreateStartingScene();
        CreateSceneForAssetBundle();        var buildTargetPlatform = EditorUserBuildSettings.activeBuildTarget;        if (!Directory.Exists(AssetBundleBuildPath))
            Directory.CreateDirectory(AssetBundleBuildPath);        // Define an AssetBundle containing the Scene
        var bundleContents = new AssetBundleBuild[]
        {
            new AssetBundleBuild()
            {
                assetBundleName = Constants.AssetBundleFileName,
                assetNames = new string[]
                {
                    Constants.SceneForAssetBundle
                }
            }
        };        var buildAssetBundlesParameters = new BuildAssetBundlesParameters()
        {
            targetPlatform = buildTargetPlatform,
            bundleDefinitions = bundleContents,
            outputPath = AssetBundleBuildPath
        };
        BuildPipeline.BuildAssetBundles(buildAssetBundlesParameters);        var buildReport = BuildReport.GetLatestReport();
        if (buildReport.summary.result != BuildResult.Succeeded)
        {
            Debug.Log("AssetBundle Build failed.");
            return;
        }        // Perform a Player build.  It will include the content of the
        // StreamingAssets folder.
        if (!Directory.Exists(Constants.PlayerBuildPath))
            Directory.CreateDirectory(Constants.PlayerBuildPath);        var buildOutput = Constants.PlayerBuildPath + "/" + Constants.PlayerExecutable;
        if (buildTargetPlatform == BuildTarget.StandaloneWindows64)
            buildOutput += ".exe";        var buildPlayerParameters = new BuildPlayerOptions()
        {
            scenes = new string[] { Constants.StartingSceneForPlayer },
            target = buildTargetPlatform,
            locationPathName = buildOutput,
            options = BuildOptions.Development | BuildOptions.AutoRunPlayer,
            assetBundleManifestPath = AssetBundleBuildPath + "/AssetBundles.manifest"
        };        if (buildTargetPlatform == BuildTarget.StandaloneWindows64)
            buildPlayerParameters.locationPathName += ".exe";        var playerBuildReport = BuildPipeline.BuildPlayer(buildPlayerParameters);
        if (playerBuildReport.summary.result != BuildResult.Succeeded)
        {
            Debug.Log($"Player Build failed. {playerBuildReport.SummarizeErrors()}");
            return;
        }
    }    static void CreateStartingScene()
    {
        var startingScene = EditorSceneManager.NewScene(NewSceneSetup.DefaultGameObjects, NewSceneMode.Single);
        var go = new GameObject();
        go.AddComponent<AssetBundleSceneLoader>();
        GameObject.CreatePrimitive(PrimitiveType.Sphere);
        EditorSceneManager.SaveScene(startingScene, Constants.StartingSceneForPlayer);
    }    static void CreateSceneForAssetBundle()
    {
        var scene = EditorSceneManager.NewScene(NewSceneSetup.DefaultGameObjects, NewSceneMode.Single);
        GameObject.CreatePrimitive(PrimitiveType.Cube);
        EditorSceneManager.SaveScene(scene, Constants.SceneForAssetBundle);
    }
}
#endif// MonoBehaviour that is included in the starting scene.
public class AssetBundleSceneLoader : MonoBehaviour
{
    AssetBundle sceneBundle = null;
    bool sceneLoaded = false;    // Triggered when the scene containing this MonoBehaviour is loaded
    void Start()
    {
        StartCoroutine(LoadAssetBundleAndScene());
        StartCoroutine(CleanupAfterDelay());
    }    IEnumerator LoadAssetBundleAndScene()
    {
        // Determine the path to the AssetBundle.
        // Application.streamingAssetsPath is used so that this works in both the Player and Play mode in the Editor.
        string AssetBundleBuildPath = Application.streamingAssetsPath + Constants.AssetBundlePath;
        var bundlePath = AssetBundleBuildPath + "/" + Constants.AssetBundleFileName;        var op = AssetBundle.LoadFromFileAsync(bundlePath);
        yield return op;        sceneBundle = op.assetBundle;
        if (sceneBundle == null)
        {
            Debug.LogError("Failed to load AssetBundle: " + Constants.AssetBundleFileName);
        }
        else
        {
            var sceneLoadOp = SceneManager.LoadSceneAsync(Constants.SceneForAssetBundle, LoadSceneMode.Additive);            if (sceneLoadOp == null)
                Debug.Log($"Failed to load {Constants.SceneForAssetBundle}");
            else
            {
                yield return sceneLoadOp;
                Scene sceneLookup = SceneManager.GetSceneByPath(Constants.SceneForAssetBundle);                //Will report "Finished loading SceneForBundle (index -1)."
                Debug.Log($"Finished loading {sceneLookup.name} (index {sceneLookup.buildIndex}).");
                sceneLoaded = true;
            }
        }
    }    IEnumerator CleanupAfterDelay()
    {
        yield return new WaitForSeconds(3.0f);        if (sceneLoaded)
            yield return SceneManager.UnloadSceneAsync(Constants.SceneForAssetBundle);
        sceneLoaded = false;        if (sceneBundle != null)
            yield return sceneBundle.UnloadAsync(true);
        sceneBundle = null;        Debug.Log("Finished unloading Content");
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| memoryBudgetKB | Controls the size of the shared AssetBundle loading cache. Default value is 1MB. |

### Properties

| Property | Description |
| --- | --- |
| isStreamedSceneAssetBundle | Return true if the AssetBundle contains Unity Scene files |

### Public Methods

| Method | Description |
| --- | --- |
| Contains | Check if an AssetBundle contains a specific object. |
| GetAllAssetNames | Return all Asset names in the AssetBundle. |
| GetAllScenePaths | Return all the names of Scenes in the AssetBundle. |
| LoadAllAssets | Loads all Assets contained in the AssetBundle synchronously. |
| LoadAllAssetsAsync | Loads all Assets contained in the AssetBundle asynchronously. |
| LoadAsset | Synchronously loads an Asset from the AssetBundle. |
| LoadAssetAsync | Asynchronously loads an Asset from the bundle. |
| LoadAssetWithSubAssets | Loads Asset and sub Assets from the AssetBundle synchronously. |
| LoadAssetWithSubAssetsAsync | Loads Asset and sub Assets from the AssetBundle asynchronously. |
| Unload | Unloads an AssetBundle freeing its data. |
| UnloadAsync | Unloads assets in the bundle. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAllLoadedAssetBundles | Get an enumeration of all the currently loaded AssetBundles. |
| LoadFromFile | Synchronously loads an AssetBundle from a file on disk. |
| LoadFromFileAsync | Asynchronously loads an AssetBundle from a file on disk. |
| LoadFromMemory | Synchronously load an AssetBundle from a memory region. |
| LoadFromMemoryAsync | Asynchronously load an AssetBundle from a memory region. |
| LoadFromStream | Synchronously loads an AssetBundle from a managed Stream. |
| LoadFromStreamAsync | Asynchronously loads an AssetBundle from a managed Stream. |
| RecompressAssetBundleAsync | Asynchronously recompress a downloaded/stored AssetBundle from one BuildCompression to another. |
| UnloadAllAssetBundles | Unloads all currently loaded AssetBundles. |

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
