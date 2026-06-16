<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/windows-iap-verification.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Verify in-app purchases with Cloud Code

Use Cloud Code to verify in-app purchases on the server before you grant entitlements.

Server-side purchase verification protects your game against spoofed or tampered purchases. The verification workflow uses a [Cloud Code module](https://docs.unity.com/en-us/cloud-code/modules/overview) to call the [Microsoft Store Service APIs](https://learn.microsoft.com/en-us/gaming/gdk/docs/store/commerce/service-to-service/microsoft-store-apis/xstore-v9-query-for-products?view=gdk-2604) on the user’s behalf.

**Note**: Purchase verification is optional. It’s recommended to implement verification for purchases that grant entitlements of meaningful value to user accounts.

## Prerequisites

Before you set up verification, ensure the following:

- Complete the purchase workflow as described in Implement in-app purchases with Unity IAP APIs.
- Create a Cloud Code module with Xbox verification. For instructions, refer to the Cloud Code documentation on [Verify Xbox in-app purchases](https://docs.unity.com/en-us/cloud-code/modules/use-cases/xbox-purchase-verification).

## Set up verification in the Unity Editor

The Unity In-App Purchasing (IAP) package can automatically validate Xbox Store purchases after you configure the following settings in the Unity Editor:

1. In the Unity Editor, go to **Edit** > **Project Settings** > **Services** > **In-App Purchasing**.
2. In the **Xbox Configuration** section, enable **Validate purchases using Microsoft Store Services**, and enter the following:        **Property** **Description**     **Cloud Code Module Name** The name of the Cloud Code module.   **Service Ticket Function Name** The name of the Access Token function.   **Validate Purchase Function Name** The name of the Validate Purchase function.

After configuration, the IAP package automatically validates purchases when users complete purchases through the Xbox Store. For information about how your Cloud Code module validates purchases with Microsoft Store, refer to [Validate purchase ownership](https://docs.unity.com/en-us/cloud-code/modules/use-cases/xbox-purchase-verification#validate-purchase-ownership).

**Note**: The Cloud Code module grants entitlements only for products that Microsoft confirms the user owns.

## Additional resources

- [Cloud Code](https://docs.unity.com/en-us/cloud-code)
- [Unity In-App Purchasing (IAP)](https://docs.unity.com/en-us/iap)
