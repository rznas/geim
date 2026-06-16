<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackOperationResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Information containing the result of a package packing operation. This information includes the path to the generated tarball file.

**Notes**:

- `PackOperationResult` is the result of Client.Pack operations.
- The tarball is a gzipped tar archive that contains the package.
- Use the tarball for local installation or distribution.

```csharp
using UnityEditor;
using UnityEditor.PackageManager;
using UnityEngine;
using UnityEditor.PackageManager.Requests;public class PackagePackerExample : EditorWindow
{
    [MenuItem("Window/Package Packer")]
    public static void ShowWindow()
    {
        GetWindow<PackagePackerExample>("Package Packer");
    }    string m_PackageFolder = "";
    string m_OutputFolder = "";
    PackRequest m_PackRequest;    void OnGUI()
    {
        GUILayout.Label("Package Packer", EditorStyles.boldLabel);        // Package folder selection
        EditorGUILayout.BeginHorizontal();
        m_PackageFolder = EditorGUILayout.TextField("Package Folder", m_PackageFolder);
        if (GUILayout.Button("Browse", GUILayout.Width(60)))
        {
            m_PackageFolder = EditorUtility.OpenFolderPanel("Select Package Folder", "", "");
        }
        EditorGUILayout.EndHorizontal();        // Output folder selection
        EditorGUILayout.BeginHorizontal();
        m_OutputFolder = EditorGUILayout.TextField("Output Folder", m_OutputFolder);
        if (GUILayout.Button("Browse", GUILayout.Width(60)))
        {
            m_OutputFolder = EditorUtility.OpenFolderPanel("Select Output Folder", "", "");
        }
        EditorGUILayout.EndHorizontal();        if (GUILayout.Button("Pack Package"))
        {
            // Validating paths is good practice, but skipped in this example 
            PackPackage();
        }
    }    void PackPackage()
    {
        EditorUtility.DisplayProgressBar("Package Packer", "Creating package tarball...", 0.5f);        m_PackRequest = Client.Pack(m_PackageFolder, m_OutputFolder);
        EditorApplication.update += TrackPackOperationProgress;
    }    void TrackPackOperationProgress()
    {
        try
        {
            if (m_PackRequest.IsCompleted)
            {
                EditorApplication.update -= TrackPackOperationProgress;
                EditorUtility.ClearProgressBar();                if (m_PackRequest.Status == StatusCode.Success)
                {
                    // The Result property on the next line is the PackOperationResult
                    var tarballPath = m_PackRequest.Result.tarballPath;
                    Debug.Log($"Package created successfully at: {tarballPath}");                    // Show in file browser
                    EditorUtility.RevealInFinder(tarballPath);
                }
                else
                {
                    Debug.LogError($"Failed to create package: {m_PackRequest.Error.message}");
                }
            }
        }
        catch
        {
            Debug.LogError("Pack operation failed.");
            EditorApplication.update -= TrackPackOperationProgress;
        }
    }
}
```

**Related information**

- Client.Pack
- PackRequest
- Package Layout
- Custom Packages

### Properties

| Property | Description |
| --- | --- |
| tarballPath | The path to the file created by the Client.Pack operation. |
