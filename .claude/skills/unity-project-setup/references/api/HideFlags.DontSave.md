<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HideFlags.DontSave.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The object will not be saved to the Scene. **It will not be destroyed when a new Scene is loaded**. It is a shortcut for HideFlags.DontSaveInBuild | HideFlags.DontSaveInEditor | HideFlags.DontUnloadUnusedAsset.

You must manually clear the object from memory using DestroyImmediate to avoid memory leaks.

For Prefab instances in a scene, you can set the hideflag on the Prefab instance handle object as a way to set the same hideflags on all the objects of the Prefab instance. (See PrefabUtility.GetPrefabInstanceHandle).

```csharp
using System.IO;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;// Creates new menu items under 'Examples' in the main menu.
public class DontSaveExamples
{
    [MenuItem("Examples/GameObject (and child) HideFlags.DontSave example")]
    static void DontSaveExample_RootWithDontSave()
    {
        //Setup hierarchy with root and one child
        GameObject rootGameObject = new GameObject("Root");
        GameObject child = new GameObject("Child");
        child.transform.parent = rootGameObject.transform;        rootGameObject.hideFlags = HideFlags.DontSave;
        //child.hideFlags = HideFlags.DontSave; //No difference for plain GameObjects as the root is marked with DontSave        //Load new scene
        EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);        //Both objects still exist as the root is marked with DontSave
        Debug.Log("Root name: " + rootGameObject.name + ", Child name: " + child.name);        //Remember to clean up, this also deleted the child GameObject
        Object.DestroyImmediate(rootGameObject);
    }    [MenuItem("Examples/Save Prefab with child HideFlags.DontSave example")]
    static void DontSaveExample_Prefab_ChildNotSavedToDisk()
    {
        //Ensure the existence of a Prefabs folder inside the Assets folder
        if (!Directory.Exists("Assets/Prefabs"))
            AssetDatabase.CreateFolder("Assets", "Prefabs");        //Setup hierarchy with root and one child
        GameObject rootGameObject = new GameObject("Root");
        GameObject child = new GameObject("Child");
        child.transform.parent = rootGameObject.transform;        //Mark child to prevent saving it
        child.hideFlags = HideFlags.DontSave;        //Save the Prefab asset
        GameObject prefabAsset = PrefabUtility.SaveAsPrefabAsset(rootGameObject, "Assets/Prefabs/Root.prefab");        //No children in prefab as the child was marked as DontSave. The childCount is 0.
        Debug.Log("Child GameObject in Prefab: " + prefabAsset.transform.childCount);        //Child still exists in scene. The childCount is 1.
        Debug.Log("Child GameObject in Scene GameObject: " + rootGameObject.transform.childCount);        //Load new scene
        EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);        //Child is deleted as it was a child of the root GameObject that got deleted in the scene transition
        if (child == null)
            Debug.Log("Child deleted correctly");
        else
            Debug.Log("Child was not deleted successfully");
    }
}
```
