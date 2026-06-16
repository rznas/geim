<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-cli.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Unity Package Manager CLI workflow

Follow this workflow to pack and sign custom Unity packages using the Unity Package Manager command-line interface (UPM CLI).

UPM CLI is a standalone tool that you can run from a terminal or integrate into a continuous integration (CI) pipeline. It’s useful if you create packages and want to sign them outside of the Unity Editor or without the scripting API, especially in automated environments.

To pack and sign a package with UPM CLI, complete the following tasks:

1. Install UPM CLI
2. Pack and sign a package

## Prerequisites

Before you use UPM CLI, set up your environment as described in UPM CLI prerequisites:

- Create a service account for your Unity organization. This is a one-time setup.
- Set the service account credentials in environment variables on your local computer or CI tool.
- Copy your organization ID from the Unity Cloud Dashboard.

## Install UPM CLI

Install the UPM CLI tool on your local computer or CI environment. You need to install the tool only once, then update it each time a newer version is available.

For details, refer to Install Unity Package Manager CLI.

## Pack and sign a package

Use the `upm pack` command to pack a custom package into a signed tarball (`.tgz`) file that you can distribute or publish. Run this command each time you want to create a signed package.

For details, refer to Pack and sign a package with Unity Package Manager CLI.

## Additional resources

- Install Unity Package Manager CLI
- Pack and sign a package with Unity Package Manager CLI
- [Create a service account](https://docs.unity.com/en-us/cloud/accounts/create-service-account)
- Introduction to package signatures
- Development workflow for creating custom packages
