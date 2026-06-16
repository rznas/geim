<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.XcScheme.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an Xcode scheme (xcscheme file).

```csharp
#if UNITY_IOS
string schemePath = pathToBuiltProject + "/Unity-iPhone.xcodeproj/xcshareddata/xcschemes/Unity-iPhone.xcscheme";var xcscheme = new XcScheme();
xcscheme.ReadFromFile(schemePath);xcscheme.SetMetalValidationOnRun(XcScheme.MetalValidation.Extended);
xcscheme.SetFrameCaptureModeOnRun(XcScheme.FrameCaptureMode.Metal);
xcscheme.AddArgumentPassedOnLaunch("--myarg = 1");xcscheme.WriteToFile(schemePath);
#endif
```

### Constructors

| Constructor | Description |
| --- | --- |
| XcScheme | Creates a new instance of the XcScheme class. |

### Public Methods

| Method | Description |
| --- | --- |
| AddArgumentPassedOnLaunch | Adds command line arguments to be passed on launch. |
| GetBuildConfiguration | Returns the build configuration used for running. |
| ReadFromFile | Reads the scheme from a file identified by the given path. |
| ReadFromStream | Reads the scheme from the given text reader. |
| ReadFromString | Reads the scheme from the given string. |
| SetBuildConfiguration | Sets the build configuration to be used for running. |
| SetDebugExecutable | Sets the **Debug executable** toggle in the scheme. |
| SetFrameCaptureModeOnRun | Sets whether frame capture should be enabled. |
| SetMetalValidationOnRun | Sets the **Metal API Validation** option in the scheme. |
| WriteToFile | Writes the scheme contents to the specified file. |
| WriteToStream | Writes the scheme contents to the specified text writer. |
| WriteToString | Writes the contents of the scheme to a string. |
