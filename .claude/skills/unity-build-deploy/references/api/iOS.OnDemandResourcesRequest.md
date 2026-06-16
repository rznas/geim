<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.OnDemandResourcesRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a request for On Demand Resources (ODR). It's an AsyncOperation and can be yielded in a coroutine.

**NOTE:** only available on iOS.

Creating an OnDemandResourcesRequest is equivalent to calling [NSBundleResourceRequest.beginAccessingResourcesWithCompletionHandler](https://developer.apple.com/reference/foundation/nsbundleresourcerequest/1614840-beginaccessingresources). The request will keep the on demand resource alive until either Dispose() is called or the request object is collected by a garbage collector, which is the equivalent of calling [NSBundleResourceRequest.endAccessingResources](https://developer.apple.com/reference/foundation/nsbundleresourcerequest/1614843-endaccessingresources).

```csharp
using UnityEngine;
using UnityEngine.iOS;
using System;
using System.Collections;public static class Loader
{
    public static IEnumerator LoadAsset(string resourceName)
    {
        // Create the request
        var request = OnDemandResources.PreloadAsync(new string[] { "Asset's ODR tag" });        // Wait until request is completed
        yield return request;        // Check for errors
        if (request.error != null)
            throw new Exception("ODR request failed: " + request.error);        // Get path to the resource and use it
        var path = request.GetResourcePath(resourceName);
        Debug.Log(path);        // Call Dispose() when resource is no longer needed.
        request.Dispose();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| error | Returns an error after operation is complete. |
| loadingPriority | Sets the priority for request. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Release all resources kept alive by On Demand Resources (ODR) request. |
| GetResourcePath | Gets file system's path to the resource available in On Demand Resources (ODR) request. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| allowSceneActivation | Allow Scenes to be activated as soon as it is ready. |
| isDone | Has the operation finished? (Read Only) |
| priority | Priority lets you tweak in which order async operation calls will be performed. |
| progress | What's the operation's progress. (Read Only) |

### Events

| Event | Description |
| --- | --- |
| completed | Raised when this AsyncOperation operation has completed. |
