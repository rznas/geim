<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class provides access to the version control API.

Note that the Version Control window is refreshed after every version control operation. This means that looping through multiple assets and doing an individual operation on each (i.e. Checkout) will be slower than passing an AssetList containing all of the assets and performing a version control operation on it once.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("VC/Checkout")]
    public static void TestCheckout()
    {
        AssetList assets = new AssetList();
        assets.Add(new Asset("Assets/"));        Task t = Provider.Checkout(assets, CheckoutMode.Both);
        t.Wait();
    }
}
```

Also note that Provider operations just execute the VCS commands, and do not automatically refresh the Version Control window. To update this window, use Task.SetCompletionAction.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("VC/ChangeSetMove")]
    static void ChangeSetMove()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/testMaterial.mat"));
        Task task = Provider.ChangeSetMove(assets, "ChangeSetID");
        task.SetCompletionAction(CompletionAction.UpdatePendingWindow);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| activeTask | Gets the currently executing task. |
| enabled | Returns true if the version control provider is enabled and a valid Unity Pro License was found. |
| hasCheckoutSupport | This is true if the currently selected version control plugin supports the Checkout method. |
| hasLockingSupport | This is true if the currently selected version control plugin supports the Lock and Unlock methods. |
| isActive | Returns true if a version control plugin has been selected and configured correctly. |
| offlineReason | Returns the reason for the version control provider being offline (if it is offline). |
| onlineState | Returns the OnlineState of the version control provider. |
| preCheckoutCallback | User-supplied callback to be called before Version Control check out operation. |
| preSubmitCallback | User-supplied callback to be called before Version Control Submit operation. |
| requiresNetwork | This is true if a network connection is required by the currently selected version control plugin to perform any action. |

### Static Methods

| Method | Description |
| --- | --- |
| Add | Allows you to add files to version control via script. |
| AddIsValid | Given a list of assets this function returns true if Provider.Add is a valid task to perform on at least one of the assets in the list. |
| ChangeSetDescription | Given a changeset only containing the changeset ID, this will start a task for quering the description of the changeset. |
| ChangeSetMove | Move an Asset or a list of Assets from their current changeset to a new changeset. |
| ChangeSets | Gets a list of pending changesets owned by the current user. |
| ChangeSetStatus | Retrieves a list of assets belonging to a changeset. |
| Checkout | Checkout an asset or a list of assets from the version control system. |
| CheckoutIsValid | Given an asset or a list of assets this function returns true if Provider.Checkout is a valid task to perform on at least one of the given assets. |
| ClearCache | This will invalidate the cached state information for all assets. |
| Delete | Starts a task to delete an Asset or a list of Assets from the disk and from the version control system. |
| DeleteChangeSets | Starts a task that will attempt to delete the given changesets. |
| DeleteChangeSetsIsValid | Tests if deleting the given changesets is a valid task to perform. |
| DiffHead | Starts a task for showing a diff of the given assest versus their head revision. |
| DiffIsValid | Returns true if starting a Diff task is a valid operation for at least one asset in the given AssetList. |
| GetActiveConfigFields | Returns the configuration fields for the currently active version control plugin. |
| GetActivePlugin | Gets the current, user selected verson control Plugin. |
| GetAssetByGUID | Returns version control information about an asset from a given GUID. |
| GetAssetByPath | Returns the version control information about an asset. Can be used with "AssetList.Add" to add assets to a list for further version control actions. |
| GetAssetListFromSelection | Returns the version control information about the currently selected Assets. |
| GetLatest | Start a task for getting the latest version of an out of sync asset from the version control server. |
| GetLatestIsValid | The task tests the given asset list and returns true if Provider.GetLatest is valid operation for one or more assets. |
| Incoming | Starts a task that queries the version control server for incoming changes. |
| IncomingChangeSetAssets | Given an incoming changeset this will start a task to query the version control server for which assets are part of the changeset. |
| IsOpenForEdit | Returns true if an asset can be edited. |
| Lock | Attempt to lock an asset for exclusive editing. |
| LockIsValid | Returns true if the Provider.Lock task can be executed on one or more assets from the given asset list. |
| Merge | Initiates a merge task to handle the merging of conflicting Assets. This invokes a merge tool, which you can set in the External Tools section of the Preferences window, on the conflicting Assets. When the merge task finishes, the AssetList only contains the Assets that the tool could merge. |
| Move | Uses the version control plugin to move an asset from one path to another. |
| Resolve | Starts a task that will resolve the conflicting assets in version control. |
| ResolveIsValid | Tests if any of the assets in the list have the conflicted state and can be resolved. |
| Revert | Reverts the specified assets by undoing any changes done since the last time you synced. |
| RevertIsValid | Returns true if Provider.Revert is a valid task to perform on at least one of the given assets in the list. |
| Status | Starts a task that will fetch the most recent status about the asset or assets from the revision control system. |
| Submit | Starts a task that submits the assets to version control. |
| SubmitIsValid | Returns true if submitting the assets is a valid operation. |
| UnlockIsValid | Returns true if unlocking the assets is a valid operation. |
| UpdateSettings | Starts a task that sends the version control settings to the version control system. |

### Delegates

| Delegate | Description |
| --- | --- |
| PreCheckoutCallback | Delegate for a user-supplied callback to be called before Version Control Checkout. |
| PreSubmitCallback | Delegate for a user-supplied callback to be called before Version Control Submit. |
