RDEPENDS_packagegroup-base += "termutils less procps strace ${SYSTEMDSTUFF}"
RDEPENDS_packagegroup-base_append_tegra = " tegra-startup tegra-eeprom-tool tegra-fuse-tool i2c-tools"
RDEPENDS_packagegroup-base_append_tegra186 = " keystore-tools"
RDEPENDS_packagegroup-base_append_tegra194 = " keystore-tools"
SYSTEMDSTUFF = "${@'systemd-analyze' if d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd' else ''}"
