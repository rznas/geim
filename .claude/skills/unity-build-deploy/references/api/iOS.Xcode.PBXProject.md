<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.PBXProject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an Xcode project (pbxproj file).

```csharp
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEditor.iOS.Xcode;public class Sample_PBXProject  
{
    [PostProcessBuild]
    public static void OnPostprocessBuild(BuildTarget buildTarget, string pathToBuiltProject)
    {
        // Stop processing if build target is not iOS
        if (buildTarget != BuildTarget.iOS)
            return;        // Initialize PBXProject
        string projectPath = PBXProject.GetPBXProjectPath(pathToBuiltProject);
        PBXProject pbxProject = new PBXProject();
        pbxProject.ReadFromFile(projectPath);        // Perform any modifications you want to the PBXProject        // Get the target GUID
        string mainTargetGuid = pbxProject.GetUnityMainTargetGuid();        // Add a new build configuration and add a new property to it
        string configName = "exampleConfig";
        pbxProject.AddBuildConfig(configName);
        string configGuid = pbxProject.BuildConfigByName(mainTargetGuid, configName);
        pbxProject.AddBuildPropertyForConfig(configGuid, "exampleProperty", "exampleValue");        // Add a new file to project and to build list
        string filePath = Path.Combine(Application.dataPath, "Resources/InputFile.txt");
        string fileGuid = pbxProject.AddFile(filePath, "Resources/InputFile.txt");
        pbxProject.AddFileToBuild(mainTargetGuid, fileGuid);        // Add frameworks to the project
        pbxProject.AddFrameworkToProject(mainTargetGuid, "CoreBluetooth.framework", false);
        pbxProject.AddFrameworkToProject(mainTargetGuid, "MapKit.framework", true);        // Apply changes to the pbxproj file
        pbxProject.WriteToFile(projectPath);
    }}
```

### Properties

| Property | Description |
| --- | --- |
| unityPostprocessTargetPhonyBuildPhaseName | The name of the placeholder build phase, which Unity adds to indicate a place to add post-processing actions. |

### Constructors

| Constructor | Description |
| --- | --- |
| PBXProject | Creates a new instance of PBXProject class. |

### Public Methods

| Method | Description |
| --- | --- |
| AddAssetTagForFile | Adds an asset tag for the given file. |
| AddAssetTagToDefaultInstall | Adds the asset tag to the list of tags to download during initial installation. |
| AddBuildConfig | Creates a new set of build configurations for all targets in the project. |
| AddBuildProperty | Adds a value to the build property list in all the build configurations for the specified target(s). |
| AddBuildPropertyForConfig | Adds a value to build property list of the given build configuration(s). |
| AddCapability | Adds a target capability to the Xcode project. |
| AddCopyFilesBuildPhase | Creates a new Copy Files build phase for a given target. |
| AddCopyFilesBuildPhaseBeforeTargetPostprocess | Creates a new Copy Files build phase for a given target. |
| AddFile | Adds a new file reference to the list of known files. |
| AddFileToBuild | Configure a file to build for the given native target. |
| AddFileToBuildSection | Configures file for building for the given native target on specific build section. |
| AddFileToBuildWithFlags | Configure a file for building for the given target with specific compiler flags. |
| AddFolderReference | Adds a new folder reference to the list of known files. |
| AddFrameworksBuildPhase | Creates a new frameworks build phase for given target. |
| AddFrameworkToProject | Adds a system framework dependency for the specified target. |
| AddHeadersBuildPhase | Creates a new headers build phase for a given target. |
| AddKnownRegion | Adds the provided regions to the Xcode Project. |
| AddLocaleVariantFile | Adds Locale to Variant Group of Xcode Project for iOS platform. |
| AddPublicHeaderToBuild | Configures a file for building for the given native target as a public header. |
| AddRemotePackageFrameworkToProject | Adds a remote package framework dependency for the specified target. |
| AddRemotePackageReferenceAtBranch | Adds a reference to the remote package at the given branch. |
| AddRemotePackageReferenceAtRevision | Adds a reference to the remote package at the given revision. |
| AddRemotePackageReferenceAtVersion | Adds a reference to the remote package at the given version. |
| AddRemotePackageReferenceAtVersionUpToNextMajor | Adds a reference to the remote package at the given version and allows updates up to the next major version. |
| AddRemotePackageReferenceAtVersionUpToNextMinor | Adds a reference to the remote package at the given version and allows updates up to the next minor version. |
| AddRemotePackageReferenceWithVersionRange | Adds a reference to the remote package and allows updates in the given version range. |
| AddResourcesBuildPhase | Creates a new resources build phase for a given target. |
| AddShellScriptBuildPhase | Creates a new copy shell script phase for a given target. |
| AddShellScriptBuildPhaseBeforeTargetPostprocess | Creates a new copy shell script phase for a given target. |
| AddSourcesBuildPhase | Creates a new sources build phase for a given target. |
| AddTarget | Creates a new native target. |
| AddTargetDependency | Creates a dependency between this target and another target. The other target may be in a different project. |
| BuildConfigByName | Returns the GUID of build configuration with the given name for the specific target. |
| BuildConfigNames | Returns the names of the build configurations available in the project. |
| ClearKnownRegions | Removes the deprecated regions that get added automatically in Xcode Project. |
| ContainsFileByProjectPath | Checks if the project contains a file with the given project path. |
| ContainsFileByRealPath | Checks if the project contains a file with the given physical path. |
| ContainsFramework | Checks whether the given system framework is a dependency of a target. |
| FindFileGuidByProjectPath | Finds a file with the given project path in the project. |
| FindFileGuidByRealPath | Finds a file with the given physical path in the project. |
| GetAllBuildPhasesForTarget | Returns all build phases for the specified target. |
| GetBaseReferenceForConfig | Gets the base configuration reference GUID for the specified build configuration. |
| GetBuildPhaseName | Returns the name of the build phase with the specified GUID. |
| GetBuildPhaseType | Returns the type of the build phase with the specified GUID. |
| GetBuildPropertyForAnyConfig | Gets a build property value for the given name in all the build configurations for the specified target(s). If a property has multiple values, those are delimited by a space. |
| GetBuildPropertyForConfig | Gets a build property value for the given name in the specified build configuration(s). If a property has multiple values they are delimited by a space. |
| GetCompileFlagsForFile | Returns compile flags set for the specific file on a given target. |
| GetCopyFilesBuildPhaseByTarget | Returns the GUID of matching copy files build phase for the given target. |
| GetEntitlementFilePathForTarget | Returns the relative path to the entitlement file for the specified build target. |
| GetFrameworksBuildPhaseByTarget | Returns the GUID of frameworks build phase for the given target. |
| GetHeadersBuildPhaseByTarget | Returns the GUID of the headers build phase for the given target. |
| GetRealPathsOfAllFiles | Return a list of all known files. |
| GetResourcesBuildPhaseByTarget | Returns the GUID of resources build phase for the given target. |
| GetShellScriptBuildPhaseForTarget | Returns the GUID of matching copy shell script build phase for the given target. |
| GetSourcesBuildPhaseByTarget | Returns the GUID of sources build phase for the given target. |
| GetTargetProductFileRef | Returns the file reference of the artifact created by building target. |
| GetUnityFrameworkTargetGuid | Returns the GUID of the framework target in Unity project. |
| GetUnityMainTargetGuid | Returns the GUID of the main target in Unity project. |
| InsertCopyFilesBuildPhase | Creates a new copy files build phase for a given target. |
| InsertShellScriptBuildPhase | Creates a new shell script build phase for a given target. |
| ProjectGuid | Returns the GUID of the project. |
| ReadFromFile | Reads the project from a file identified by the given path. |
| ReadFromStream | Reads the project from the given text reader. |
| ReadFromString | Reads the project from the given string. |
| RemoveAssetTag | Removes an asset tag. |
| RemoveAssetTagForFile | Removes an asset tag for the given file. |
| RemoveAssetTagFromDefaultInstall | Removes the asset tag from the list of tags to download during initial installation. |
| RemoveBuildConfig | Removes all build configurations with the given name from all targets in the project. |
| RemoveFile | Removes the given file from project. |
| RemoveFileFromBuild | Removes the given file from the list of files to build for the given target. |
| RemoveFrameworkFromProject | Removes a system framework dependency for the specified target. |
| ReplaceFile | Replaces a specified file with a new file. |
| SetBaseReferenceForConfig | Sets the base configuration reference for the specified build configuration. |
| SetBuildProperty | Sets a build property to the given value in all build configurations for the specified target(s). |
| SetBuildPropertyForConfig | Sets a build property to the given value in the specified build configuration(s). |
| SetCompileFlagsForFile | Sets the compilation flags for the given file in the given target. |
| SetDevelopmentRegion | Sets the default language and region for the bundle in Xcode Project. |
| SetTeamId | Sets the Team ID of an Xcode project. |
| TargetGuidByName | Returns the GUID of the native target with the given name. |
| UpdateBuildProperty | Adds and removes values from a build property in all build configurations for the specified target(s). |
| UpdateBuildPropertyForConfig | Adds and removes values from a build property in the given build configuration. |
| WriteToFile | Writes the project contents to the specified file. |
| WriteToStream | Writes the project contents to the specified text writer. |
| WriteToString | Writes the contents of the project to string. |

### Static Methods

| Method | Description |
| --- | --- |
| GetPBXProjectPath | Returns the path to PBX project in the given Unity build path. |
| GetUnityTestTargetName | Returns the default test target name. |
| IsBuildable | Checks if a file with the given extension can be built by Xcode. |
| IsKnownExtension | Checks if files with the given extension are known to PBXProject. |
