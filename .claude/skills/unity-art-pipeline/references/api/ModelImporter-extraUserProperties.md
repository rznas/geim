<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-extraUserProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A list of default FBX properties to treat as user properties during OnPostprocessGameObjectWithUserProperties.

Specify the names of default FBX properties to be consider as extra user properties to pass to AssetPostprocessor.OnPostprocessGameObjectWithUserProperties.

```csharp
using UnityEditor;
using UnityEngine;public class MyPostProcessor : AssetPostprocessor
{
    public override uint GetVersion() => 1;    //Adding 1 FBX default properties to be considered as UserProperties + 1 not existing in the imported FBX
    private void OnPreprocessModel()
    {
        string[] extraUserPropertyNames =
        {
            "currentUVSet",
            "MyNonFbxDefaultProperty"
        };
        ((ModelImporter)assetImporter).extraUserProperties = extraUserPropertyNames;
    }    //Importing a FBX with a user defined Property "MyDefinedProperty"
    private void OnPostprocessGameObjectWithUserProperties(GameObject go, string[] propNames, object[] values)
    {
        foreach (var propName in propNames)
        {
            Debug.Log(propName);
        }
    }    // Will display :
    //  currentUVSet
    //  MyDefinedProperty
}
```
