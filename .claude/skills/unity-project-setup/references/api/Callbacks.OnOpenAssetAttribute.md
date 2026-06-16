<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Callbacks.OnOpenAssetAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Invokes a static callback method when the Unity Editor attempts to open an asset.

Unity calls any static method decorated with `[OnOpenAssetAttribute]` when attempting to open an asset, such as when double-clicking the asset in the Editor. This offers the opportunity to implement custom asset opening logic or to verify that an asset can open in the Unity Editor as opposed to an external program.

The attribute targets methods and accepts two optional positional parameters:

- `callbackOrder`: The first parameter represents the index of the callback invocation order and must be of type `int`. This is useful if you have more than one OnOpenAssetAttribute callbacks, and you would like them to be called in a certain order. Methods are called in ascending numerical order, starting from 0.
- `attributeMode`: The second parameter is an `enum` value from OnOpenAssetAttributeMode that indicates whether the decorated method is called in `Execute` or `Validate` mode. `Execute` mode is intended for callbacks that implement some custom asset-opening behavior. `Validate` mode is intended to check if the Editor can open the asset. If not specified the default mode is OnOpenAssetAttributeMode.Execute.

A method decorated with `[OnOpenAssetAttribute]` and in `Execute` mode must have one of the following signatures:

- `static bool OnOpenAsset(int instanceID)`
- `static bool OnOpenAsset(int instanceID, int line)`
- `static bool OnOpenAsset(int instanceID, int line, int column)`

**Note:** The callback method does not have to be named `OnOpenAsset` but its signature must match one of those shown.

A method decorated with `[OnOpenAssetAttribute]` and in `Validate` mode must have the following signature:

`static bool OnOpenAsset(int instanceID)`

In OnOpenAssetAttributeMode.Validate mode, the method does not open the asset but checks to see if the Editor can open it. It returns `true` if the Editor can open the asset or `false` otherwise. This is equivalent to the check AssetDatabase.CanOpenAssetInEditor performs.

Version control system integrations primarily use this validation function to determine what files to check out. Native assets like GameObjects, Scenes, or user-made assets return `true` because they are opened and edited in the Editor. Assets like sound clips and textures return `false` because they're opened and edited in an external program. 

See Also: OnOpenAssetAttributeMode, AssetDatabase.CanOpenAssetInEditor

```csharp
// Return true if you handled the opening of the asset or false if an external tool should open it.using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;public class MyAssetHandler : ScriptableObject
{
    [OnOpenAssetAttribute(1)]
    public static bool step1(int instanceID, int line)
    {
        string name = EditorUtility.InstanceIDToObject(instanceID).name;
        Debug.Log("Open Asset step: 1 (" + name + ")");
        return false; // we did not handle the open
    }    // step2 has an attribute with index 2, so will be called after step1
    [OnOpenAssetAttribute(2)]
    public static bool step2(int instanceID, int line)
    {
        Debug.Log("Open Asset step: 2 (" + instanceID + ")");
        return false; // we did not handle the open
    }    [OnOpenAsset(OnOpenAssetAttributeMode.Validate)]
    public static bool WillOpenInUnity(int instanceID)
    {
        if (AssetDatabase.GetMainAssetTypeAtPath(AssetDatabase.GetAssetPath(instanceID)) == typeof(MyAssetHandler))
        {
            // We can open MyAssetHandler asset using MyAssetHandler opening method
            return true;
        }
        else  return false; // The passed instance doesn't belong to MyAssetHandler type asset so we won't be able to open it using opening method inside MyAssetHandler
    }
}
```

### Inherited Members
