<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-troubleshooting-custom-control-library-compilation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Troubleshooting custom control library compilation

This troubleshooting guide helps you resolve issues when compiling custom controls into DLLs.

## Symptoms

When you compile custom controls into DLLs, you might encounter the following issues:

- Custom controls don’t appear in the UI Builder.
- Custom controls don’t serialize correctly when building libraries (DLLs).

## Cause

UI Toolkit uses the UxmlElement code generator to support UXML serialization. However, when compiling custom controls into DLLs, the generated serialization code isn’t included by default, causing issues with element visibility and serialization.

## Resolution

To resolve this issue, run the UI Toolkit source generator (`Unity.UIToolkit.SourceGenerator.dll`) during the DLL compilation process.

1. Find the source generator file in your Unity installation. It’s typically located at: `<Unity Installation Path>\Data\Tools\Unity.SourceGenerators\Unity.UIToolkit.SourceGenerator.dll`.
2. Add the source generator as an analyzer in your library project’s `.csproj` file within an `<ItemGroup>`: `<ItemGroup> <Analyzer Include="path\to\Unity.UIToolkit.SourceGenerator.dll" /> </ItemGroup>`
3. Compile your library as usual. This triggers the source generator, which generates the required UxmlSerializedData class for your custom control.

**Tip**: Always rebuild your library against the Unity version you’re using because the generated code might vary between versions.

## Additional resources

- Customize the custom control UXML tag name
- Define UXML attributes for built-in data types
- Define UXML attributes for complex data types
- Customize UXML attributes
