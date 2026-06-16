<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/cus-export.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Export and sign your UPM package

Export and sign your Unity Package Manager (UPM) package so you can share it with others.

Starting with Unity 6.3, publishers can sign their package directly from the Package Manager window.

When you sign a package, you must associate it with one of your organizations, so package consumers can quickly determine who created and owns it.

The only packages you can sign are packages that have the **Custom** or **Local** label in the Package Manager window:

- A **Custom** label appears on packages you’re developing or customizing in the `Packages` folder of your project.
- A **Local** label appears on packages you installed with the Package Manager’s Install package from disk method, or package folders you reference as dependencies in your project manifest file.

**Note:** You can use methods other than the Package Manager window to pack and sign your packages. For a full list of methods, refer to Methods for signing packages.

## Sign a package from the Package Manager window

To sign a package from the Package Manager window:

1. Make sure you’re signed in to the Unity Hub.
2. Open the **Package Manager** Window.
3. Select the package you want to sign.
4. Select **Export**.   The Package Manager window with the Export button for an editable package   **Note**: Another way to access the export dialog is with the menus. Go to the **Project** window and select the base folder for your package in the `Packages` folder. Open the **Assets** menu (or right-click your package folder) and select **Export As **UPM Package****.
5. In the **Export Package** dialog that appears, open the **Authoring Org** menu and select the organization you want to associate this package with.  **Note**: For large projects whose contributors span multiple organizations, be sure to select the wider organization (or company-wide organization). If that organization doesn’t exist yet, refer to Considerations for companies with multiple organizations.
6. Select a location to store the signed package and select **Select Folder** (Windows) or **Choose** (macOS).  **Note**: If the package already exists in that location, a warning message prompts you to confirm overwriting the file.
7. When the export process completes, your file management application opens at the location you specified, showing you the newly created file. A confirmation message also displays in the **Console** window.

The export operation creates a tarball file (`.tgz`), which is a compressed archive file. This tarball file contains an encrypted file (`.attestation.p7m`), which contains the package signature.

Refer to Share your package for information about distributing this tarball file to others.

## Additional resources

- Package signatures
- Methods for signing packages
- Share your package
- Create and export asset packages
