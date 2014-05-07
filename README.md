LoneWolf Gentoo Overlay
==============

This overlay contains some packages that I needed at least once, so I am sharing them here just in case someone else needs them.

To add this overlay just edit __/etc/layman/layman.cfg__ and add the following url to the overlays value __https://raw.github.com/lonewolf4/gentoo-overlay/master/profiles/repo.xml__

Example:

    overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                https://raw.github.com/lonewolf4/gentoo-overlay/master/profiles/repo.xml

Then just add it with __layman -a lonewolf4__
