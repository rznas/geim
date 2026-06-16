<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-AssemblyDefinitionReferenceImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Assembly Definition Reference Inspector window reference

An Assembly Definition Reference is an asset that defines a reference to an Assembly Definition. Create an Assembly Definition Reference asset in a folder to include the **scripts** in that folder in the referenced Assembly Definition (rather than creating a new assembly). Scripts in child folders are also included, unless they have their own Assembly Definition or Assembly Definition Reference asset.

| **Property** | **Description** |
| --- | --- |
| **Use GUID** | This setting controls how Unity serializes the reference to the Assembly Definition Reference asset. When you enable this property, Unity saves the reference as the asset’s GUID, instead of the Assembly Definition name. It’s good practice to use the GUID instead of the name, because it means you can make changes to the name of an Assembly Definition asset without having to update other Assembly Definitions and References that reference it. |
| **Assembly Definition** | The referenced Assembly Definition asset. |

## Additional resources

Create an Assembly Definition Reference asset
