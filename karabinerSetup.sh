#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.emacsmode_ex_controlG 1
/bin/echo -n .
$cli set repeat.wait 20
/bin/echo -n .
$cli set repeat.initial_wait 100
/bin/echo -n .
$cli set option.emacsmode_controlH 1
/bin/echo -n .
$cli set option.emacsmode_controlPNBF 1
/bin/echo -n .
$cli set option.emacsmode_controlD 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_command 1
/bin/echo -n .
$cli set remap.jis_yen2backslash 1
/bin/echo -n .
/bin/echo
