<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/asset-store-upm-publish.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# UPM package Asset Store publishing workflow

**Note**: Paid **UPM packages** are not yet available on the Publisher Portal. You can publish free UPM packages.

You can create a Unity Package Manager (UPM) package from assets that you own and make it available to download on the [Unity Asset Store](https://assetstore.unity.com/). Manage UPM packages through the UPM publishing portal, which is different from the asset package publishing workflow.

**Important:** An **Asset Store** package must be compliant with [Unity Core Standards](https://unity.com/core-standards) and therefore meet certain requirements. For more information, refer to the [Asset Store Provider Agreement](https://unity.com/legal/provider) and the [Submission Guidelines](https://unity3d.com/asset-store/sell-assets/submission-guidelines).

## UPM package and products

The UPM publishing workflow introduces the concept of a product. A product is different from a package in the following ways:

- A product is a container that can include one or more UPM packages.
- Customers can get a product from the Asset Store.
- A package stores **scripts**, features, and assets for Unity, including Editor or Runtime tools and libraries, asset collections, and project templates.

Create a product draft in the Publisher Portal to manage and configure the structure of your packages. A product can contain one or multiple packages. For more information, refer to Create a Publisher Portal package draft.

## UPM package namespaces

UPM packages require consistent namespaces. The following table shows each of the namespaces you need to set for the different stages of the UPM publishing workflow:

| **UPM workflow step** | **Namespace action** | **Description** |
| --- | --- | --- |
| **Sign up to the UPM workflow** | Set a publisher namespace. | Establish and claim a namespace for your packages during the enrollment process. |
| **Create a UPM product draft for a single package** | Set a product namespace. | Assign a product namespace. The product namespace becomes part of the technical name. |
| **Create a UPM product draft for multiple packages** | Set a product namespace and a package namespace for each package. | Assign a package namespace for each package you add. The package namespace becomes part of the technical name. |
| **Create and validate UPM packages** | Set the UPM package folder and `package.json` namespaces in the `name` field. | The UPM package folder and the `package.json` name must match the package’s technical name. |
| **Upload UPM packages** | The Asset Store Publishing Tools checks and matches the package technical name to the one set on the Publisher Portal. | If the publisher space doesn’t match the product namespace, a button appears that you can select to create a new ID. If the technical name doesn’t match the product namespace, a button appears that you can select to create a new product draft. |

For more information about setting namespaces, refer to Create a Publisher Portal package draft.

## Prerequisites

To publish assets to the UPM publishing portal, you must first create the following:

1. [Create a Unity ID](https://id.unity.com/account/new).
2. Set up an Asset Store publisher profile.
3. Enroll as a UPM publisher on the Publisher Portal
4. Enroll as a UPM publisher on the Publisher Portal.

## Publish a UPM package to the Asset Store

To publish a UPM package to the Asset Store, you need to enroll on the Publisher Portal. To learn more, refer to [UPM Publishing on the Asset Store](https://assetstore.unity.com/publishing/upm-publishing).

To create and publish a UPM package, perform the following steps:

1. Create a product draft.
2. Validate and upload your package.
3. Submit the package for approval.

You can then check the status of the package, and once published, you can make further updates in the Publisher Portal.

## Additional resources

- Enroll as a UPM publisher on the Publisher Portal
- Create a Publisher Portal product draft
- [Managing your organization](https://docs.unity.com/en-us/cloud/organizations)
- Asset Store packages
