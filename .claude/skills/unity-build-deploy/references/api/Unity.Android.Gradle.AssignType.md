<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Android.Gradle.AssignType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An assign type for property elements.

Properties in gradle files use different ways to assign a value. Use the `AssignType` parameter to choose which way to assign the property value.

```csharp
using Unity.Android.Gradle;
using UnityEditor.Android;public class ModifyProject : AndroidProjectFilesModifier
{
    public override void OnModifyAndroidProjectFiles(AndroidProjectFiles projectFiles)
    {
        // This will produce "buildToolsVersion = '30.0.0'"
        projectFiles.UnityLibraryBuildGradle.Android.BuildToolsVersion.Set("30.0.0", AssignType.Equals);
        // This will produce "compileSdk(30)"
        projectFiles.UnityLibraryBuildGradle.Android.CompileSdk.Set(30, AssignType.Parentheses);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Places value after a space: property value. |
| Equals | Places value after an equals: property = value. |
| PlusEquals | Places value after plus-equals: property += value. |
| Column | Places value after a column: property : value. |
| Parentheses | Places value in parentheses: property(value). |
| Brackets | Places value in brackets: property [value]. |
| EqualsBrackets | Places value in brackets after an equals: property = [value]. |
| SetFunction | Places value in a set function: property.set(value). |
