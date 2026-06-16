<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/embedded-linux-configure-ssh-build-run.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Configure SSH for remote Build and Run on Embedded Linux

Configure Secure Shell (SSH) key-based access so Unity can connect to a remote Embedded Linux device and launch your Player with **Build and Run**.

**Note**: Have the device IP address or hostname and the SSH user name ready before you follow the steps below.

## Prerequisites

Before you begin:

- Install Unity with Embedded Linux Build Support.
- Confirm you can reach the target device over the network.
- Confirm the target device has an SSH server running.

## Configure SSH access for the target device

To generate an SSH key and configure host mapping:

1. Generate a new SSH key pair with a unique file name: `ssh-keygen -t ed25519 -f ~/.ssh/unity_embedded_linux_key -C "unity-embedded-linux-build"`
2. Copy the public key to the target device: `ssh-copy-id -i ~/.ssh/unity_embedded_linux_key.pub <remote-user>@<ip-address>`  **Note**: If `ssh-copy-id` isn’t available, manually append the public key to `~/.ssh/authorized_keys` on the target device.
3. Add a host entry in your local `~/.ssh/config` file: `Host MYMACHINE HostName <ip-address> User <remote-user> StrictHostKeyChecking accept-new IdentityFile ~/.ssh/unity_embedded_linux_key`  **Note**: If your SSH service uses a non-default port, add a `Port` line to the same host entry: `Host MYMACHINE HostName <ip-address> User <remote-user> StrictHostKeyChecking accept-new IdentityFile ~/.ssh/unity_embedded_linux_key Port <port>`
4. Verify the SSH mapping: `ssh MYMACHINE`

After you complete these steps, SSH logs you in directly to the remote home directory. If login fails, refer to Troubleshoot SSH connection issues.

## Configure remote device settings in the Build Profiles window

To configure Unity to use the SSH host mapping:

1. Open the Build Profiles window.
2. Select your Embedded Linux **build profile**.
3. In **Platform Settings** > **Remote Device**, set **Address** to `MYMACHINE`.
4. Leave **Username** blank.
5. Set **Install Path** to a valid path on the remote device.
6. Select **Build and Run**.

Unity builds the Player, copies it to the target device, and launches it remotely. If the build or launch fails, refer to Troubleshoot SSH connection issues.

## Troubleshoot SSH connection issues

Use the following list to troubleshoot SSH connection issues:

- If authentication fails, check that the public key is in `~/.ssh/authorized_keys` on the target device and that file permissions are valid.
- If connection fails, verify the host alias, IP address, and optional `Port` value in `~/.ssh/config`.
- If deployment succeeds but launch fails, verify **Install Path** points to a writable and executable location on the target device.
- If the Player doesn’t start, make sure all required export variables are set in **Remote Device** > **Exports** in the Embedded Linux **Build Profiles** window. For more information, refer to Embedded Linux build settings reference.

## Additional resources

- Build and deliver for Embedded Linux
- Embedded Linux Build Profiles reference
- Deploy an Embedded Linux project
