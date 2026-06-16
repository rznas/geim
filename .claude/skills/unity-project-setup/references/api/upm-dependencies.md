<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-dependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Package dependency and resolution

When you work in the Package Manager window, you can install a package from several sources (a registry, a local folder or tarball, a Git URL, and by name). However, while the Package Manager installs packages from these sources seamlessly, it first has to make a series of calculations to decide which version to install. It also has to decide which other packages and versions to install to support the package you selected.

****Direct dependencies****

When you select a package version to install through the Package Manager window, you are adding a “dependency” to your project manifest. This is a declaration that you need a specific version of a particular package in order for the project to work. To add a dependency to your project, you add a reference to the package and version in the form `package-name@package-version` to the dependencies property of the `<project-root>/Packages/manifest.json` file. These are called “direct” dependencies because your project directly depends on them.

****Indirect dependencies****

Packages can also require other packages to work. These are called “indirect” (or transitive) dependencies. The package developer adds these to the dependencies property of the package manifest file during development (`<package-root>/package.json`). For example, in the diagram below, the `alembic@1.0.7` package has a dependency on the `timeline@1.0.0` package, so the timeline package is an “indirect” dependency. Conversely, the project has dependencies on the `cinemachine@2.6.0` and `alembic@1.0.7` packages, so those are both “direct” dependencies.

**Version overrides**

When you add a package version as a dependency, that version isn’t necessarily the version that the Package Manager installs. The reason is because the Package Manager has to consider all dependencies in your project, whether direct or indirect. In the following example, the ****XR** Plugin Management** package requested was version `4.0.3`. However, the Package Manager installed version `4.0.6` because another package depended on the higher version, as indicated in the information message **(B)**:

To force the Package Manager to use a specific version of a package of a direct dependency, you can set the `pinnedPackages` property in the project manifest file.

**Dependency graph**

The Package Manager can install only one package version at a time, so it has to construct a dependency graph. This graph is a list of every direct and indirect dependency for the project. The dependency graph determines which version of each package to install.

**Lock file**

When the Package Manager resolves all version conflicts, it saves the resolution in a lock file for two reasons:

- Determinism, to make sure that the same packages are reliably installed every time.
- Efficiency, to reduce the amount of time and resources it takes to compute the dependency graph again.

## Additional resources

- Package version conflict and resolution
