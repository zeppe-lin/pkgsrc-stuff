README sp-flash-tool-bin


DEVICE VISIBILITY
=================

It may need to make your device visible for flash-tool by adding the device's
IDs to udev rules.

1. Connect the device to USB and check the information:

	lsusb

   You would see something like this:

	Bus 001 Device 009: ID 04e8:6860 Samsung Electronics Co., Ltd
	Galaxy series, misc. (MTP mode)

2. Write /etc/udev/rules.d/99-ttyacms.rules using ID numbers (as one line):

	SUBSYSTEM=="usb", ATTR{idVendor}=="04e8",
	ATTR{idProduct}=="6860", MODE="0666",
	ENV{ID_MM_DEVICE_IGNORE}="1"

3. Change file permissions and reload udev rules:

	sudo chmod a+r /etc/udev/rules.d/99-ttyacms.rules
	sudo udevadm control --reload-rules

4. Replug the device and check if it works.


End of file.
