<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/assembly-definitions-intro.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to assemblies in Unity

Unity provides two special asset types, Assembly Definitions and Assembly References, to help organize your **scripts** into assemblies.

An assembly is a C# code library that contains the compiled classes and structs that are defined by your scripts and which also define references to other assemblies. For more information about assemblies in C#, refer to [Assemblies in .NET](https://learn.microsoft.com/en-us/dotnet/standard/assembly/)

By default, Unity compiles almost all of your game scripts into a predefined assembly called `Assembly-CSharp.dll`. Unity also creates a few smaller, specialized predefined assemblies.

This arrangement works acceptably for small projects, but has some drawbacks as you add more code to your project:

- Every time you change one script, Unity has to recompile all the other scripts, increasing overall compilation time for iterative code changes.
- Any script can directly access types defined in any other script, which can make it more difficult to refactor and improve your code.
- All scripts are compiled for all platforms.

By defining assemblies, you can organize your code to promote modularity and reusability. Scripts in assemblies you define are no longer added to the default assemblies and can only access scripts in your other custom assemblies.

The previous diagram illustrates how you might split up the code in your project into multiple assemblies. Because *Main* references *Stuff* and not the other way around, you know that any changes to the code in *Main* cannot affect the code in *Stuff*. Similarly, because *Library* doesn’t depend on any other assemblies, you can more easily reuse the code in *Library* in another project.

## Defining assemblies

To organize your project code into assemblies, create a folder for each desired assembly and move the scripts that should belong to each assembly into the relevant folder. Then create Assembly Definition assets to specify the assembly properties.

Unity compiles all the scripts in a folder that contains an Assembly Definition into a single assembly, using the name and other settings defined by the asset. The assembly includes any scripts in subfolders unless a subfolder has its own Assembly Definition or Assembly Reference asset.

To include scripts from a non-child folder in an existing assembly, create an Assembly Reference asset in the non-child folder and set it to reference the Assembly Definition asset that defines the target assembly. For example, you can combine the scripts from all the Editor folders in your project in their own assembly, no matter where those folders are located.

Unity compiles assemblies in an order determined by their dependencies. You can’t specify the order in which compilation takes place.

## Finding which assembly a script belongs to

To identify which assembly a script belongs to, select the script file in the **Project** window to view its properties in the ****Inspector**** window. The assembly filename and the Assembly Definition, if one exists, are shown in the **Assembly Information** section of the **Inspector**.

## Editor folder

Unity normally compiles any scripts in folders named `Editor` into the predefined `Assembly-CSharp-Editor` assembly no matter where those scripts are located. However, if you create an Assembly Definition asset in a folder that has an `Editor` folder underneath it, Unity no longer puts those **Editor scripts** into the predefined Editor assembly. Instead, they go into the new assembly created by your Assembly Definition, where they might not belong. To manage `Editor` folders, you can create Assembly Definition or Reference assets in each `Editor` folder to place those scripts in one or more Editor assemblies. For more information, refer to Creating an assembly for Editor code.

For more information on using the reserved folder name `Editor` for Editor scripts, refer to Reserved folder name reference.

## Additional resources

- Creating assembly definitions
- Referencing assemblies
- Assembly metadata and compilation details
- Assembly Definition properties
- Assembly Definition Reference properties
- Assembly Definition File Format
