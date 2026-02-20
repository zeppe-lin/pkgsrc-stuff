README wine-4.0.x-i386-appimage

---

REQUIREMENTS
============

Kernel Module
-------------

AppImage requires **fuse** module to be loaded before starting the
application.

Load manually:

```sh
# as root
/sbin/modprobe fuse
```

Load automatically at boot:

- Add `fuse` to `/etc/modules-load.d/*.conf` or
- Add `/sbin/modprobe fuse` to `/etc/rc.modules`.

---

End of file.
