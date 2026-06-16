<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/windows-iap-partner-center-unity-setup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Set up Microsoft Partner Center and Unity Editor

Install the required Unity packages, create add-ons in Microsoft Partner Center, and configure Unity Editor settings to prepare your Unity project for Xbox Store purchases.

## Prerequisites

Before you implement in-app purchases, verify your project meets the following requirements:

**Development environment**:

- Unity Editor: 6000.0 LTS or later
- [Game Development Kit (GDK)](https://learn.microsoft.com/en-us/gaming/gdk/?view=gdk-2604): April 2025 GDK v2504.0.4020 or later

**Unity packages**:

Install the following packages:

- Microsoft GDK API package: 1.3.0 or later
- Microsoft GDK Tools package: 1.3.0 or later
- [In-App Purchasing package](https://docs.unity.com/en-us/iap): 5.3.0 or later

## 1. Configure Microsoft Partner Center

Before implementing in-app purchases, verify the following configurations in [Microsoft Partner Center](https://partner.microsoft.com/en-us/dashboard/home):

- Title ID or Service Configuration ID
- Device families selected for publishing
- Sandbox configured with test accounts

For more information, refer to the Microsoft documentation on [Product setup](https://learn.microsoft.com/en-us/gaming/game-publishing/concepts/game-setup-overview).

**Note**: Sandbox environments don’t support subscription testing. Subscriptions don’t display in Xbox account settings, which prevents renewal or cancellation.

### Enable Microsoft Store Services (Optional)

To enable [Microsoft Store Services](https://learn.microsoft.com/en-us/gaming/gdk/docs/store/commerce/service-to-service/service-to-service-nav?view=gdk-2604), go to **Product collections and purchases**, and enter the **client ID** of your game back end.

### Create add-ons for Unity IAP

Add-ons represent the products you want to sell in your game.

1. Go to **Add-ons** and create add-ons that match the [product types](https://docs.unity.com/en-us/iap/products-and-catalogs#product-types) in the IAP package.         **IAP ProductType** **Microsoft Partner Center Add-on** **XStoreProductKind**     Consumable Consumable (Developer-managed) UnmanagedConsumable   Non-Consumable Durable Durable   Subscription Subscription Durable (EndDate property is set)     **Note**: The [`XStoreProductKind`](https://learn.microsoft.com/en-us/gaming/gdk/docs/reference/system/xstore/enums/xstoreproductkind?view=gdk-2604) is included for reference only. Use the [`ProductType`](https://docs.unity3d.com/Packages/com.unity.purchasing@latest/index.html?subfolder=/api/UnityEngine.Purchasing.ProductType.html?q=ProductType) enum in your Unity code.
2. For each add-on, configure the following settings:
  - **Content type**: Electronic software download
  - **Microsoft Store listing**: Doesn’t have its own Microsoft Store listing
3. In the **Identity details** section, note the **Store ID** for each add-on.

## 2. Configure Unity Editor settings

Configure Microsoft GDK packages and enable **Unity IAP** to prepare your project for Xbox Store integration.

### Set up GDK packages

1. In the Unity Editor, go to **Project Settings** > **Microsoft GDK** and enable **Build for Microsoft GDK** for each target platform.
2. Ensure a GDK Settings asset is active, and configure the Microsoft Game Config asset with IDs that match the ones in Microsoft Partner Center.
3. Go to **Project Settings** > **Player** > **Other Settings** and verify that the **Scripting Define Symbols** includes `MICROSOFT_GDK_SUPPORT`.

**Note**: This symbol is set automatically when you enable **Build for Microsoft GDK** in **Project Settings** > **Microsoft GDK**.

### Set up IAP package

1. Enable and configure the IAP service for your project. For more information, refer to the IAP package documentation on [Get started with Unity IAP](https://docs.unity.com/en-us/iap/get-started).
2. Verify if the current targeted store is **Xbox Store**.

After completing the Microsoft Partner Center and Unity Editor configuration, implement the purchase workflow in your Unity code.

## Additional resources

- [Initial configurations in the Microsoft Partner Center](https://developer.microsoft.com/en-us/games/xbox/docs/gdk/xstore-initial-configuration-in-partner-center)
- [Setting up sandboxes](https://developer.microsoft.com/en-us/games/xbox/docs/gdk/live-setting-up-sandboxes)
- [MicrosoftGame.config reference](https://developer.microsoft.com/en-us/games/xbox/docs/gdk/microsoftgameconfig-schema)
- Implement in-app purchases with Unity IAP APIs
