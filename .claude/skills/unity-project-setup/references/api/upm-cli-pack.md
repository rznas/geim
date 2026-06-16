<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-cli-pack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Pack and sign a package with Unity Package Manager CLI

Use the `upm pack` command in the Unity Package Manager command-line interface (UPM CLI) to pack a custom package into a signed tarball that you can distribute or publish.

The `upm pack` command takes the folder structure of a custom package, packs it, and signs it with your organization credentials. The output is a signed tarball (`.tgz`) file.

You can run this command locally or as part of a continuous integration (CI) pipeline. Before you use the `upm pack` command, make sure you have completed all the prerequisites and installed the UPM CLI.

The only data that the `upm pack` command sends is the information required by the signing service so it can sign the package against the specified organization ID.

## Syntax

```
upm pack <package-directory> --organization-id <id> --destination <path>
```

The following table describes the parameters for the `upm pack` command:

| **Parameter** | **Required** | **Description** |
| --- | --- | --- |
| `<package-directory>` | No | An absolute or relative path to the root folder of the custom package to pack.  This is the folder that contains the package manifest file (`package.json`).  You can use an absolute or relative path.  **Note:** You can omit this parameter if you set the root of your package directory as the current working directory before running `upm pack`. |
| `--organization-id <id>` | Yes | The organization ID you copied from the Unity Cloud Dashboard.  Refer to the prerequisites in Install Unity Package Manager CLI. |
| `--destination <path>` | No | The output path where UPM CLI places the signed tarball.  If you specify a folder that doesn’t exist, UPM CLI creates it.  **Note:** If you omit this parameter, UPM CLI places the file in the current working directory. |

## Pack and sign a package

To pack a package and create a signed tarball:

1. Open a terminal window (macOS or Linux) or a PowerShell window (Windows).
2. (Optional) Go to the root directory of your custom package. This is the folder that contains your package’s `package.json` file. If you don’t navigate to this directory, specify its location as the `<package-directory>` parameter.
3. Run the `upm pack` command: `upm pack <package-directory> --organization-id <id> --destination <path>` Replace the placeholder values as described in the parameter table.

## Output

The command creates a signed `.tgz` file in the location specified by the `--destination` parameter. If you didn’t specify a destination, UPM CLI places the file in the current working directory.

### Example

The following command packs the package in the `package` subfolder of the current working directory, signs it with the specified organization ID, and places the output tarball in the `output` subfolder:

```
upm pack ./package --organization-id 1234567890123 --destination ./output
```

## Additional resources

- Unity Package Manager CLI workflow
- Install Unity Package Manager CLI
- Introduction to package signatures
- Development workflow for creating custom packages
