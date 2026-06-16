<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/asset-store-upm-update.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Update a UPM package for the Asset Store

**Note**: Paid **UPM packages** are not yet available on the Publisher Portal. You can publish free UPM packages.

You can update a published package to release a new version of the package with bug fixes or new features, or to change product details such as pricing and media. When you publish an update, users can access the new version in the Package Manager window.

You can make two types of updates, and each has different required information as follows:

| **Update type** | **Required actions** | **Optional actions** |
| --- | --- | --- |
| **New package version** | Upload a new package version. Edit or fill in package metadata. | Edit product metadata or media. |
| **Update product information metadata or media** | Edit product metadata or media. | None. |

## Prerequisites

- Install the [Asset Store Publishing Tools](https://assetstore.unity.com/packages/package/5368745) in the Unity Editor.
- Have a published product ready on Publisher Portal.

## Create a package draft

1. Use the unique link in your confirmation email to open the Publisher Portal, or return to the Publisher Portal’s Product Overview page.
2. Select the published package.
3. Select **Create Draft**.

## Validate and update the package

1. Edit the package manifest file by updating the version property. The version number of the package must be unique, and the technical naming consistent.
2. Use the ****Asset Store** Validator** window in the [Asset Store Publishing Tools](https://assetstore.unity.com/packages/package/5368745) validate the package.
3. Use the **Asset Store Uploader** window to upload a new version of the package.

## Update details of the package

1. In the Publisher Portal, select **Fill out your package metadata** for the updated package, and add the compatibility information, release notes, and package information.
2. In the **Product Information** tab, review the existing information.
3. In the **Media** tab, review the existing uploaded media.
4. Select **Submit**.

## Additional resources

- Package versioning
- [Asset Store Publishing Tools](https://assetstore.unity.com/packages/package/5368745)
- Validate and upload a UPM package for the Asset Store
