<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.DependencyInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure that contains information about a package's dependencies, including the package name and version requirements.

- The `version` strings follow semantic versioning format.
- The dependencies of a package are defined in its `package.json` file.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor.PackageManager.Requests;[ExecuteInEditMode]
public class PackageDependencyInfoExample : MonoBehaviour
{
    ListRequest m_ListRequest;
    
    void Start()
    {
        Debug.Log("Listing packages and getting their dependency info...");
        m_ListRequest = Client.List();
    }
    void Update()
    {
        if (m_ListRequest != null && m_ListRequest.IsCompleted)
        {
            if (m_ListRequest.Status == StatusCode.Success)
            {
                foreach (var package in m_ListRequest.Result)
                {
                    var outputString = $"Dependencies for {package.name}:";
                    if(package.dependencies == null || package.dependencies.Length == 0)
                    {
                        outputString += "\n- No dependencies";
                    }
                    else
                    {
                        foreach (var dependency in package.dependencies)
                        {
                            outputString += $"\n- {dependency.name} ({dependency.version})";
                        }
                    }
                    Debug.Log(outputString);
                }
            }
            else
            {
                Debug.Log($"Package list request failed: {m_ListRequest.Error}");
            }
            m_ListRequest = null;
        }
    }
}
```

**Related information**

- PackageInfo
- Client.List
- Package Manifest
- [Semantic Versioning](https://www.semver.org)

### Properties

| Property | Description |
| --- | --- |
| name | The name of the dependency. |
| version | The version of the dependency. |
