README appimagetool-appimage

---


POST-INSTALL
============

AppImage needs FUSE to run, so load kernel module `fuse`' before starting
the application:

    sudo modprobe fuse

You can add `modprobe fuse` to `/etc/rc.modules` to have the module load
automatically on system startup, rather than having to do it every time before
starting AppImage.


---

End of file.
