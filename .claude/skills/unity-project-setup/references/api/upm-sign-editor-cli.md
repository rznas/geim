<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-sign-editor-cli.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Sign a package using Editor command line arguments

Pack and sign your Unity Package Manager (UPM) package so it’s ready for distribution and compatible with Unity’s package signature ecosystem.

If you publish packages using continuous integration (CI), you can create a signed package using the Unity Editor command line. For other methods, refer to Methods for signing packages.

To gather your organization’s **Organization ID** and sign your package from the command line:

1. If the project that uses the package you want to sign is open, close the Unity Editor.
2. Go to the [Unity Cloud Dashboard](https://cloud.unity.com/account/my-organizations) and select the organization you want to use to sign your package. You can also select the link for your account in the top right corner of the dashboard and select **Switch organization** for the intended organization, then open the menu again and select **Manage organization**.  **Note**: For large projects whose contributors span multiple organizations, be sure to select the wider organization (or company-wide organization). If that organization doesn’t exist yet, refer to Considerations for companies with multiple organizations.
3. From the **My organizations** page (or the **Organization Settings** page), locate the **Organization ID** field.
4. Copy the **Organization ID** value.
5. Open a command prompt window.
6. Change directories to the location of your Unity Editor. For more information, refer to Unity Editor command line arguments and [Locate the Editor program file](https://docs.unity.com/hub/add-editor#add-a-manually-downloaded-editor-to-the-hub).
7. Input the following command, replacing the placeholder values represented by angled brackets:

## Windows

```
Unity.exe -batchmode -username <email_address> -password <your_password> \
    -upmPack <path_to_package_folder> <path_to_tarball> \
    -cloudOrganization <your_organization_id> -logfile -
```

## macOS

```
Unity.app/Contents/MacOS/Unity -batchmode -username <email_address> -password <your_password> \
    -upmPack <path_to_package_folder> <path_to_tarball> \
    -cloudOrganization <your_organization_id> -logfile -
```

**Note**: Although optional, specifying `-logfile -` is helpful because it sends the command results to the command window.

| **Parameter to replace** | **Description** |
| --- | --- |
| `<email_address>` | The email address you use to sign in to Unity products and services. |
| `<your_password>` | The password you use to sign in to Unity products and services. |
| `<path_to_package_folder>` | The fully qualified path to the folder that contains the `package.json` file for the package you want to sign. **Note**: Don’t include `package.json` in this parameter value. |
| `<path_to_tarball>` | The output path where you want to save the signed tarball file (`.tgz`). **Note**: If the folder doesn’t exist, the command creates it for you. |
| `<your_organization_id>` | The Organization ID you copied from the Unity Cloud Dashboard. |

The output tarball file contains an encrypted file (`.attestation.p7m`), which contains the package signature.

Refer to Share your package for information about distributing this tarball file to others.

## Additional resources

- Introduction to package signatures
- Package creation
- Methods for signing packages
