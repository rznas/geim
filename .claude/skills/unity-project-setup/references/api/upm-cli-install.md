<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/upm-cli-install.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Install Unity Package Manager CLI

Set up the Unity Package Manager command-line interface (UPM CLI) so you can pack and sign custom packages from the command line or continuous integration (CI) environment.

Before you can use UPM CLI to pack and sign packages, you need to install the tool and configure your environment with the required credentials. You need to install the tool only once, then each time a newer version of the tool is available. The following sections describe the prerequisites, the installation process, and how to verify your installation.

The install script runs locally. It doesn’t send private data to Unity.

For background information about UPM CLI, refer to Unity Package Manager CLI workflow.

## Prerequisites

Before you install and use UPM CLI, complete the following steps.

**Important:** These prerequisites require you to interact with the [Unity Cloud Dashboard](https://cloud.unity.com). If you belong to multiple organizations, make sure you’re signed in to the dashboard with the organization you want to sign packages with. Use the account menu in the dashboard to check your organization or change to another one.

1. Create a service account:
  - Follow the instructions at [Create a service account](https://docs.unity.com/en-us/cloud/accounts/create-service-account).
  - When you add access to the service account at the organization level, select **Manage organization roles**, go to the **Package Manager** field, and select **Package Manager Package Signer**. Select **Save**.
2. Store service account credentials:
  - Set the following environment variables (if running the script locally) or in the secrets settings of your CI tool (if running the script in an automated environment):
    - `UPM_SERVICE_ACCOUNT_KEY_ID`: The key ID that you generated when you created the service account.
    - `UPM_SERVICE_ACCOUNT_KEY_SECRET`: The secret key that you generated when you created the service account.
3. Copy your organization ID:
  - The pack command requires this value as part of the signing process.
  - In the [Unity Cloud Dashboard](https://cloud.unity.com), go to **Administration** > **Settings** to open the **Organization Settings** panel. Copy the **Organization ID**.

## Check if UPM CLI is already installed

To check if UPM CLI is already installed:

1. Open a terminal window (macOS or Linux) or a PowerShell window (Windows).
2. Run one of the following commands: `upm --version upm -v`
3. Check the results:
  - If the command returns an error such as `command not found` or `'upm' is not recognized`, UPM CLI isn’t installed. Proceed to Install UPM CLI.
  - If the command returns a version number, compare it against the latest version listed at [https://cdn.packages.unity.com/upm-cli/latest.txt](https://cdn.packages.unity.com/upm-cli/latest.txt). If your version is out of date, proceed to Install UPM CLI to update. Otherwise, go to Pack and sign a package with Unity Package Manager CLI.

## Install UPM CLI

You can install or update to the latest version of UPM CLI with one command, or you can run multiple commands if you want to inspect the script.

Both methods install UPM CLI and add it to the `PATH` environment variable, so you can run `upm` commands from any directory.

### Install with one command

To download and install the latest version of UPM CLI without inspecting the script, run the command that matches your operating system:

- macOS or Linux: `curl -fsSL https://cdn.packages.unity.com/upm-cli/install.sh | bash`  **Tip**: To install a specific version instead of the latest version, append `-s -- v#.#.#` to the install command, replacing `v#.#.#` within the actual number. For example, to install `v9.24.0`, append `-s -- v9.24.0`.
- Windows (PowerShell): `irm https://cdn.packages.unity.com/upm-cli/install.ps1 | iex`  **Tip**: To install a specific version instead of the latest version, refer to Install with multiple commands.

When the install command completes, make sure you restart your terminal session for the changes to take effect.

### Install with multiple commands

To install or update to the latest version of UPM CLI with the option to inspect the script:

1. Open a terminal window (macOS or Linux) or a PowerShell window (Windows).
2. Download the install script for the latest version of UPM CLI:
  - macOS or Linux: `curl -fsSL https://cdn.packages.unity.com/upm-cli/install.sh -o install.sh`
  - Windows (PowerShell): `Invoke-WebRequest https://cdn.packages.unity.com/upm-cli/install.ps1 -OutFile install.ps1`
3. (Optional) Inspect the install script before you run it:
  - macOS or Linux: `less install.sh` Type `q` to return to the terminal prompt.
  - Windows (PowerShell): `Get-Content install.ps1 | more` Type `q` to return to the PowerShell prompt.
4. Run the install script:   **Tip**: To install a specific version instead of the latest version, append `v#.#.#` to the install command, replacing `v#.#.#` within the actual number. For example, to install `v9.24.0`, append `v9.24.0`.
  - macOS or Linux: `bash install.sh`
  - Windows (PowerShell): `. .\install.ps1`  **Note**: If PowerShell blocks the script due to execution policy settings, temporarily allow it with the following commands: `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass .\install.ps1`

When the install script completes, make sure you restart your terminal session for the changes to take effect.

## Restart your terminal session

Restart your Terminal or PowerShell session for the changes to take effect.

On macOS or Linux, you can also run a shell-specific command within the current session:

- Zsh shell: `source ~/.zshrc`
- Bash shell: `source ~/.bashrc`

## Next steps

With UPM CLI installed, you’re ready to pack and sign a package with UPM CLI.

## Additional resources

- Unity Package Manager CLI workflow
- Pack and sign a package with Unity Package Manager CLI
- Introduction to package signatures
- [Create a service account](https://docs.unity.com/en-us/cloud/accounts/create-service-account)
