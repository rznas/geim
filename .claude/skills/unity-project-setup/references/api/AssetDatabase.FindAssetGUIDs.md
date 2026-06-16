<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.FindAssetGUIDs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filter | The filter string can contain search data. See below for details about this string. |
| searchInFolders | The folders to perform the search in. Unity searches within this folder and any child folders. If unspecified, Unity searches in the `Assets` and `Packages` folders of your project. |

### Returns

**GUID[]** An array containing the GUIDs of any matching assets. If no matching assets were found, returns empty array.

### Description

Searches the asset database with a filter string and returns an array of GUIDs.

FindAssetGUIDs allows you to search for assets. The `string` argument can provide names, labels or types (classnames). The filter string can include:
 
 **Name**: Filter assets by their filename (without extension). Words separated by a space are treated as separate name searches. For example, `"test asset"`, is for two name searches, one looking for a match with `test` and the other with `asset`. You can also perform partial searches. For example, you can match `MyAwesomeTexture` by searching for `awesome`.
 
 **Labels (l:)**: Assets can have labels attached to them. Use the keyword `'l:'` before each label to search for assets by their labels.
 
 **Types (t:)**: Use the keyword `'t:'` to find assets by their type. If more than one type is included in the filter `string` then assets that match one class will be returned. Types can either be built-in types such as `Texture2D` or user created script classes. User created classes are assets created from a ScriptableObject class in the project. If all assets are wanted use `Object` as the type because all assets derive from Object. Specifying one or more folders using the `searchInFolders` argument limits the searching to these folders and their child folders. This is faster than searching all assets in all folders.
 
 **AssetBundles (b:)**: Use the keyword `'b:'` to find assets which are part of an AssetBundle.
 
 **Area (a:)**: Find assets in a specific **area** of a project. Valid values are `"all"`, `"assets"` and `"packages"`. Use this to make your query more specific using the `'a:'` keyword followed by the area name to speed up searching.
 
 **Globbing (glob:)**: Use globbing to match specific rules. The keyword `glob:` is followed by the query. For example, `glob:Editor` will find all Editor folders in a project, `glob:(Editor|Resources)` will find all Editor and Resources folders in a project, `glob:Editor/*` will return all assets inside Editor folders in a project, while `glob:Editor/**` will return all assets within Editor folders recursively.
 
 **Note:** 
 Searching is case insensitive.
 
 Use AssetDatabase.LoadAssetByGUID to load an asset.

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("Example/FindAssetGUIDs Example")]
    static void ExampleScript()
    {
        // Find all assets labelled with 'architecture' :
        GUID[] guids1 = AssetDatabase.FindAssetGUIDs("l:architecture", null);        foreach (GUID guid1 in guids1)
        {
            Debug.Log(AssetDatabase.GUIDToAssetPath(guid1));
        }        // Find all Texture2Ds that have 'co' in their filename, that are labelled with 'architecture' and are placed in 'MyAwesomeProps' folder
        GUID[] guids2 = AssetDatabase.FindAssetGUIDs("co l:architecture t:texture2D", new[] {"Assets/MyAwesomeProps"});        foreach (GUID guid2 in guids2)
        {
            Debug.Log(AssetDatabase.GUIDToAssetPath(guid2));
        }
    }
}
```

The following script example shows how the Names, Labels and Types details added to Assets can be located. The FindAssetGUIDs function is demonstrated. The assets created in this example use the `ScriptObj` class.

```csharp
// This script file has two CS classes.  The first is a simple Unity ScriptableObject script.
// The class it defines is used by the Example class below.
// (This is a single Unity script file. You could split this file into a ScriptObj.cs and an
// Example.cs file which is more structured.)using UnityEngine;
using UnityEditor;
using System.IO;public class ScriptObj : ScriptableObject
{
    public void Awake()
    {
        Debug.Log("ScriptObj created");
    }
}// Use ScriptObj to show how AssetDabase.FindAssetGUIDs can be usedpublic class Example
{
    static ScriptObj testI;
    static ScriptObj testJ;
    static ScriptObj testK;    [MenuItem("Examples/FindAssetGUIs Example two")]
    static void ExampleScript()
    {
        CreateAssets();
        NamesExample();
        LabelsExample();
        TypesExample();
    }    static void CreateAssets()
    {
        if (!Directory.Exists("Assets/AssetFolder"))
        {
            AssetDatabase.CreateFolder("Assets", "AssetFolder");
        }        if (!Directory.Exists("Assets/AssetFolder/SpecialFolder"))
        {
            AssetDatabase.CreateFolder("Assets/AssetFolder", "SpecialFolder");
        }        testI = (ScriptObj)ScriptableObject.CreateInstance(typeof(ScriptObj));
        AssetDatabase.CreateAsset(testI, "Assets/AssetFolder/testI.asset");        testJ = (ScriptObj)ScriptableObject.CreateInstance(typeof(ScriptObj));
        AssetDatabase.CreateAsset(testJ, "Assets/AssetFolder/testJ.asset");        // create an asset in a sub-folder and with a name which contains a space
        testK = (ScriptObj)ScriptableObject.CreateInstance(typeof(ScriptObj));
        AssetDatabase.CreateAsset(testK, "Assets/AssetFolder/SpecialFolder/testK example.asset");        // an asset with a material will be used later
        Material material = new Material(Shader.Find("Standard"));
        AssetDatabase.CreateAsset(material, "Assets/AssetFolder/SpecialFolder/MyMaterial.mat");
    }    static void NamesExample()
    {
        Debug.Log("*** FINDING ASSETS BY NAME ***");        GUID[] results;        results = AssetDatabase.FindAssetGUIDs("testI");
        foreach (GUID guid in results)
        {
            Debug.Log("testI: " + AssetDatabase.GUIDToAssetPath(guid));
        }        results = AssetDatabase.FindAssetGUIDs("testJ");
        foreach (GUID guid in results)
        {
            Debug.Log("testJ: " + AssetDatabase.GUIDToAssetPath(guid));
        }        results = AssetDatabase.FindAssetGUIDs("testK example");
        foreach (GUID guid in results)
        {
            Debug.Log("testK example: " + AssetDatabase.GUIDToAssetPath(guid));
        }        Debug.Log("*** More complex asset search ***");        // find all assets that contain test (which is all assets)
        results = AssetDatabase.FindAssetGUIDs("test");
        foreach (GUID guid in results)
        {
            Debug.Log("name:test - " + AssetDatabase.GUIDToAssetPath(guid));
        }
    }    static void LabelsExample()
    {
        Debug.Log("*** FINDING ASSETS BY LABELS ***");        string[] setLabels;        setLabels = new string[] { "wrapper" };
        AssetDatabase.SetLabels(testI, setLabels);        setLabels = new string[] { "bottle", "banana", "carrot" };
        AssetDatabase.SetLabels(testJ, setLabels);        setLabels = new string[] { "swappable", "helmet" };
        AssetDatabase.SetLabels(testK, setLabels);        // label searching:
        //   testI has wrapper, testK has swappable, so both have 'app'
        //   testJ has bottle, so have a label searched as 'bot'
        GUID[] getGuids = AssetDatabase.FindAssetGUIDs("l:app l:bot");
        foreach (GUID guid in getGuids)
        {
            Debug.Log("label lookup: " + AssetDatabase.GUIDToAssetPath(guid));
        }
    }    static void TypesExample()
    {
        Debug.Log("*** FINDING ASSETS BY TYPE ***");        GUID[] guids;        guids = AssetDatabase.FindAssetGUIDs("t:material");
        foreach (GUID guid in guids)
        {
            Debug.Log("Material: " + AssetDatabase.GUIDToAssetPath(guid));
        }        guids = AssetDatabase.FindAssetGUIDs("t:Object l:helmet");
        foreach (GUID guid in guids)
        {
            Debug.Log("ScriptObj+helmet: " + AssetDatabase.GUIDToAssetPath(guid));
        }
    }
}
```
