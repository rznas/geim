<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-sign-methods.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Methods for signing packages

Choose from multiple methods to sign packages that you create.

When you sign a package, you must associate it with one of your organizations, so package consumers can quickly determine who created and owns it.

The only packages you can sign are packages that have the **Custom** or **Local** label in the Package Manager window:

- A **Custom** label appears on packages you’re developing or customizing in the `Packages` folder of your project.
- A **Local** label appears on packages you installed with the Package Manager’s Install package from disk method, or package folders you reference as dependencies in your project manifest file.

Each method creates a signed tarball (`.tgz`) ready for distribution and compatible with Unity’s package signature ecosystem.

| **Method** | **Description** |
| --- | --- |
| Unity Package Manager window | Sign and export with a visual interface directly in the Unity Editor. Ideal for one-off exports that don’t need automation. |
| Unity Editor CLI | Scriptable signing that runs inside the Unity Editor in batch mode. Ideal for continuous integration or continuous delivery (CI/CD) pipelines that already use Editor command-line arguments for building or testing. |
| Unity Package Manager CLI | Lightweight standalone tool that doesn’t require a Unity Editor installation. Uses service account credentials instead of personal credentials. Ideal for CI/CD pipelines and secure automated environments. |
| Scripting API | Sign packages using C# **scripts** that run inside the Unity Editor. Ideal for custom Editor tools or workflows that already process or publish packages with scripts. |

## Additional resources

- Package signatures
- Package creation
