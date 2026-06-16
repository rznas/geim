<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/asset-store-upm-validate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Validate and upload a UPM package for the Asset Store

**Note**: Paid **UPM packages** are not yet available on the Publisher Portal. You can publish free UPM packages.

To validate a UPM package for the **Asset Store**, perform the following steps.

## Prerequisites

- Set up a product draft in the Publisher Portal with a reserved package technical name.
- Follow the instructions in Package development workflow to create a UPM package. Your package must follow the same naming convention that you set in the draft package, for example `com.company.product.tools`. UPM packages have a size limitation of 550 MB.

## Validate and upload to the Editor

1. Install [Asset Store Publishing Tools](https://assetstore.unity.com/packages/package/5368745).
2. Open the Unity Editor and go to **Window** > **Tools** > **Asset Store** > **Validator**.
3. Select **UPM** as the **Validation Type** and run the Validator.
4. After you’ve fixed any issues the Validator highlights, open the **Asset Store Uploader** (**Window** > **Tools** > **Asset Store** > **Uploader**).
5. Select the **UPM Packages** tab, and then select **Upload** on the package you want to upload to the Asset Store.

Once the upload is successful, a link to the Publisher Portal is available, where you can continue to configure product listing. In the Product Portal you can fill in the package’s metadata details, product details, media, and submit the product for approval. For more information, refer to Submit an UPM package for approval to the Asset Store.

## Additional resources

- [Asset Store UPM Publishing Tools](https://assetstore.unity.com/packages/package/5368745)
- Submit an UPM package for approval to the Asset Store
- Check the status of a UPM package for the Asset Store
