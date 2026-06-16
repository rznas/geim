<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/cus-pkg-lp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Package creation

Create packages that deliver Unity Editor or runtime tools to support game development workflows.

This information focuses on creating Unity Package Manager (UPM) packages. **UPM packages** typically include functional content, such as custom Editor windows, runtime tools, or utilities designed for use during development, rather than content-only assets like models or textures. These tools are often designed to streamline workflows for game designers, developers, or technical artists within a Unity project.

UPM packages offer modularity, versioning, and reuse across projects. UPM packages support a wide range of content, including C# **scripts**, managed assemblies, and built-in **plug-ins**. While the primary purpose is tool delivery, packages can also include supporting assets like animations, textures, **audio clips**, or models when necessary.

For more information about the differences between UPM packages and **asset packages** (`.unitypackage` format), refer to package types. If you want to create an asset package rather than a UPM package, refer to create and export asset packages.

| **Topic** | **Description** |
| --- | --- |
| Get started with package creation | Get a high-level overview of creating UPM packages. |
| Comparison of package creation locations | Choose whether to create your package inside or outside of the project’s `Packages` folder. |
| Package development workflow | Develop your package by supplying the required and recommended components. |
| Export and sign your UPM package | Export and sign your package so you can share it with others. |
| Share your package | Learn the different ways you can share your UPM package when it’s ready for consumption. |

## Additional resources

- Package types
- Create and export asset packages
