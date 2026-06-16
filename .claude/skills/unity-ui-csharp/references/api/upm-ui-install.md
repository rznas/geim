<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-ui-install.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Install a UPM package from a registry

**Note**: When you install a **UPM package** using Package Manager, the Package Manager evaluates other packages and their dependencies to determine if there are version conflicts with the version you selected. If it detects any conflicts or restrictions, it installs the version that resolves these issues. For more information, refer to Package dependency and resolution.

Use the same process for installing a package from either the Unity registry or any scoped registry defined in your project.

1. Open the **Package Manager** window and select **Unity Registry** from the navigation panel. If you set up a scoped registry and you want to install a package from a scoped registry, choose **My Registries** instead.  **Note**: If you haven’t defined any scoped registries for this project, **My Registries** doesn’t appear in the navigation panel.   Select **Unity Registry** or **My Registries**
2. Select the package you want to install from the list of packages. The package information appears in the details panel.  **Note:** If the Package Manager doesn’t list the package you want to install in the list of packages, it might be an undiscoverable package, such as an experimental or pre-release package. The Package Manager doesn’t display experimental packages unless they’re already installed, but pre-release packages appear in the Package Manager when you enable the Show Pre-release Package Versions project setting.
3. Optional: If multiple versions are available, select the version to install. For more information on available versions, refer to Find a specific version of a package.
4. Click **Install**.

When the progress bar finishes, the new package is ready to use.

**Note**: You can install multiple packages with one click by using the multiple select feature. For more information, refer to Perform an action on multiple packages or feature sets.

## Additional resources

- Package types
- Install a UPM package from Asset Store
- Download and import an asset package
