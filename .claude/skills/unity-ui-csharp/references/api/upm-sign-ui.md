<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-sign-ui.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Sign packages with the Package Manager window

Export and sign your Unity Package Manager (UPM) package so you can share it with others.

Starting with Unity 6.3, publishers can create a signed package directly from the Package Manager window. For other methods, refer to Methods for signing packages.

To sign a package from the Package Manager window:

1. Make sure you’re signed in to the Unity Hub.
2. Open the **Package Manager** Window.
3. Select the package you want to sign.
4. Select **Export**.   The Package Manager window with the Export button for an editable package   **Note**: Another way to access the export dialog is with the menus. Go to the **Project** window and select the base folder for your package in the `Packages` folder. Open the **Assets** menu (or right-click your package folder) and select **Export As **UPM Package****.
5. In the **Export Package** dialog that appears, open the **Authoring Org** menu and select the organization you want to associate this package with.  **Note**: For large projects whose contributors span multiple organizations, be sure to select the wider organization (or company-wide organization). If that organization doesn’t exist yet, refer to Considerations for companies with multiple organizations.
6. Select a location to store the signed package and select **Select Folder** (Windows) or **Choose** (macOS).  **Note**: If the package already exists in that location, a warning message prompts you to confirm overwriting the file.
7. When the export process completes, your file management application opens at the location you specified, showing you the newly created file. A confirmation message also displays in the **Console** window.

The export operation creates a tarball file (`.tgz`), which is a compressed archive file. This tarball file contains an encrypted file (`.attestation.p7m`), which contains the package signature.

## Additional resources

- Introduction to package signatures
- Package creation
- Methods for signing packages
