PROJECT SUMMARY
===============

Sage-on-Gentoo provides split ebuilds (http://www.gentoo.org) for the computer
algebra system SAGE (http://www.sagemath.org).

If you have problems with sage-on-gentoo or have suggestions talk to us on
#gentoo-science on freenode:

  http://www.gentoo.org/main/en/irc.xml

or write a mail to the "gentoo-science" mailing list:

  http://www.gentoo.org/main/en/lists.xml

An archive listing all mails may be found at:

  http://archives.gentoo.org/gentoo-science/

QUICK INSTALLATION GUIDE
========================

1. *INSTALL AND CONFIGURE LAYMAN*:
   The preferred way of getting sage-on-gentoo is layman. Make sure layman is
   installed and correctly configured. You may find a guide for layman at:

     http://www.gentoo.org/proj/en/overlays/userguide.xml

2. *ADD OUR OVERLAY*:
   Update your layman list and add this overlay with:

   ::

     layman -L
     layman -a sage-on-gentoo

3. *UNMASK AND USE-FLAG EBUILDS*:
   Before the installation you will need to unmask the required ebuilds. You
   should use the following file which already contains all required entries:

   ::

     sage-on-gentoo/packages.keywords/sage

   For permanent unmasking place a symbolic link to this file into your
   /etc/portage/package.keywords/ directory:

   ::

     ln -s <path-to-layman>/sage-on-gentoo/package.keywords/sage \
           /etc/portage/package.keywords/sage

   Since the Sage ebuild requires its dependencies to be built with several USE-
   flags we provide a standard package.use file:

   ::

     ln -s <path-to-layman>/sage-on-gentoo/package.use/sage \
           /etc/portage/package.use/sage

   <path-to-layman> is usually /usr/local/portage/layman, for layman 1.3.0 and
   higher it is /var/lib/layman.

4. *INSTALL SAGE*:
   Type

   ::

     emerge -va sage

   to install sage; note that this will pull in a lot of dependencies.

5. *UPDATE YOUR LOCAL OVERLAY*:
   To update your local copy of sage-on-gentoo simply type:

   ::

     layman -S

   After that you may run

   ::

     emerge -vuDNa world

   or a similar command to check for updates.