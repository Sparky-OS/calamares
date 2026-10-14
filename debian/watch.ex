# Example watch control file for uscan.
# Rename this file to "watch" and then you can run the "uscan" command
# to check for upstream updates and more.
# See uscan(1) for format.
#
# This file uses the rfc822 format and uses paragraphs. Examples taken from
# debian-watch(5).
#
# First paragraph define the version.
Version: 5

# Each following paragraphs are rules for checking upstream versions.
#
# HTTP site (basic).
#Source: http://example.com/~user/release/@PACKAGE@.html
#Matching-Pattern: files/@PACKAGE@@ANY_VERSION@@ARCHIVE_EXT@
#Pgp-Sig-Url-Mangle: s%$%.asc%
#
# FTP server.
#Source: ftp://ftp.example.org/pub/@PACKAGE@/
#Matching-Pattern: @PACKAGE@@ANY_VERSION@@ARCHIVE_EXT@
#
# SourceForge hosted projects.
#Source: https://sf.net/@PACKAGE@/
#Matching-Pattern: @PACKAGE@@ANY_VERSION@@ARCHIVE_EXT@
#
# GitHub hosted projects.
#Template: GitHub
#Owner: <user>
#Project: @PACKAGE@
#
# GitLab hosted projects.
#Template: GitLab
#Dist: https://salsa.debian.org/<user>/@PACKAGE@
#
# Forgejo
#Source: https://codeberg.org/api/v1/repos/<user>/@PACKAGE@/tags
#Matching-Pattern: https://codeberg.org/<user>/<project>/archive/[^"-_v]*@ANY_VERSION@@ARCHIVE_EXT@
#Search-Mode: plain
#Filename-Mangle: s%.*/[^"-_v]*@ANY_VERSION@%@PACKAGE@-$1%
#
# Direct Git.
#Source: http://git.example.org/@PACKAGE@.git
#Matching-Pattern: refs/tags/@ANY_VERSION@
#Git-Mode: full
#Mode: git
#Pgp-Mode: gittag
#
# PyPI.
#Template: Pypi
#Dist: @PACKAGE@
