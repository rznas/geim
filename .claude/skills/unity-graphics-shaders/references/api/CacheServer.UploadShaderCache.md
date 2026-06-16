<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CacheServer.UploadShaderCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Uploads the contents of the Shader Cache directly to the Accelerator.

Use this method to upload the entries of the Shader Cache Accelerator in an asynchronous way. This API can be used when an already imported project is opened with Unity but was not previously imported using the Accelerator. The Shader Cache is located inside the Library/ShaderCache folder. As the Shader cache is currently managed outside of the AssetDatabase, a separate call is needed to request that the contents of the Shader cache are upload. **NOTE:** The corresponding command line argument for this is -cacheServerUploadExistingShaderCache and will queue up the uploading of entries in the Shader Cache which are not found on the Accelerator.

```csharp
using UnityEngine;
using UnityEditor;public class CacheServerExamples
{
    [MenuItem("CacheServer/UploadShaderCacheToCacheServer")]
    public static void UploadShaderCacheToCacheServer()
    {
        //This will upload the contents of the Shader Cache to the Accelerator
        CacheServer.UploadShaderCache();
    }}
```
