README zaproxy-bin

---


LOOK AND FEEL
=============

To find out how to setup font settings and GTK+ appearance, see the README of
`jdk-bin` package:

    pkgman readme zaproxy-bin


RUN AS DIFFERENT USER
=====================

Add a new user and allow to make connections to the X server:

    # useradd -G audio,video -U -m zaproxy
    $ xhost +SI:localuser:zaproxy

If you wish to customize user's GTK+ themes, see README files of `gtk` and
`gtk3` packages.

Use the following wrapper as zaproxy launcher:

    #!/bin/sh
    # zaproxy-sandbox.sh
    /usr/bin/xhost +SI:localuser:zaproxy
    /usr/bin/sudo -u zaproxy -H /usr/bin/zaproxy

To run this wrapper without asking the password, add the following line into
the `/etc/sudoers.d/99_zaproxy` file:

    <USER> ALL=(zaproxy) NOPASSWD: /usr/bin/zaproxy

And remember that separate user makes sense if your home directory has
permission 700.


FIREFOX/PALEMOON AND SELF-SIGNED CERTIFICATE
============================================

Generate a unique private key (KEY):

    $ openssl genrsa -out mydomain.key 2048

Generating a Certificate Signing Request (CSR):

    $ openssl req -new -key mydomain.key -out mydomain.csr

Creating a Self-Signed Certificate (CRT):

    $ openssl x509 -req -days 365 -in mydomain.csr \
         -signkey mydomain.key -out mydomain.crt

Append KEY and CRT to mydomain.pem:

    $ cat mydomain.key mydomain.crt > mydomain.pem

Adjust pem to OWASP ZAP' compatibility:

    $ sed -i 's| RSA PRIVATE | PRIVATE |' mydomain.pem

Next, import domain.pem into browser:

* In case of Palemoon:

    ```
    Tools -> Preferences
    Advanced -> Certificates -> View Certificates -> Import
    ```

* In case of Firefox:

    ```
    (Edit) -> Settings -> Privacy & Security
    Security -> View Certificates -> Import
    ```

And import domain.pem into zaproxy:

    Tools -> Options -> Dynamic SSL Certificates -> Import


---

End of file.
