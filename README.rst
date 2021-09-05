=============
Woobie module
=============

Demonstrating **EggPlug** - https://github.com/astrorigin/eggplug.tcl

How to sign your module
=======================

Generate your keys if you dont have already::

   signify-openbsd -G -p key.pub -s key.sec

Put your ``key.sec`` in a secret place and do not lose it.
Put a copy of ``key.pub`` in the repo and do not ever modify it.

Sign the file ``main.tcl`` with that *same* key each time you publish::

   signify-openbsd -S -s /secret/place/key.sec -m main.tcl -x main.sig

..
