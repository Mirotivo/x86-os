## Installing NASM and QEMU on Windows

1. **Install NASM**:
   - Visit [https://www.nasm.us/](https://www.nasm.us/) and download the latest stable release of NASM for Windows.
   - Run the installer and follow the on-screen instructions to complete the installation.

2. **Install QEMU**:
   - Visit [https://www.qemu.org/](https://www.qemu.org/) and download the latest stable release of QEMU for Windows.
   - Extract the contents of the downloaded zip archive to a directory of your choice.

3. **Set up environment variables (optional)**:
   - Open the Start menu, search for "environment variables," and select "Edit the system environment variables."
   - In the "System Variables" section, add the paths to NASM and QEMU executables to the "Path" variable.

4. **Verify the installations**:
   - Open the command prompt and run `nasm -v` to verify the NASM installation.
   - Run `qemu-system-x86_64 -version` to verify the QEMU installation.

nasm -f bin boot.asm -o boot.bin
qemu-system-x86_64 boot.bin