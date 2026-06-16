<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-signature-lp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Package signatures

Package publishers can sign packages, and package consumers can check for those signatures to protect against tampered, malicious, or unmaintained code from entering a project.

Starting with Unity 6.3, the Package Manager checks for digital signatures on all tarball packages used in the Unity ecosystem. Package signatures are part of [Unity Core Standards](https://unity.com/core-standards).

The recommended best practice is for all publishers to sign their packages and for all consumers to use only signed packages. Multiple signing methods are available, from visual workflows in the Unity Editor to standalone command-line tools ideal for continuous integration or continuous delivery (CI/CD) pipelines.

| **Topic** | **Description** |
| --- | --- |
| **Introduction to package signatures** | Understand what package signatures are, how the Package Manager displays signature status, and what each status indicator means. |
| **Methods for signing packages** | Get an overview of how package signing works, and learn about the methods you can use to sign packages that you create. |
| **Sign packages with the Package Manager window** | Pack and sign a package with a visual interface directly in the Unity Editor. |
| **Sign packages with the Editor CLI** | Pack and sign a package from the command line using Unity Editor batch mode. Useful in CI/CD pipelines. |
| **Unity Package Manager command-line interface** | Learn about the standalone UPM CLI tool and the workflow you can use to pack and sign packages outside of the Unity Editor. Ideal for CI/CD pipelines. |
| **Sign packages with the scripting API** | Pack and sign a package using the `Client.Pack` method in a C# script. |

## Additional resources

- Package creation
