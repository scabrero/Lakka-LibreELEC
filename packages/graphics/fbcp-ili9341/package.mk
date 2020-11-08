################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="fbcp-ili9341"
PKG_VERSION="662e8db76ba16d86cf6fd09d85240adc19e62735"
PKG_ARCH="arm"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/juj/fbcp-ili9341"
PKG_GIT_URL="$PKG_SITE"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="graphics"
PKG_LONGDESC="A blazing fast display driver for SPI-based LCD displays for Raspberry Pi A, B, 2, 3, 4 and Zero "

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

# TODO Flags for Rpi 2
PKG_CMAKE_OPTS_TARGET="-DARMV6Z=ON \
		-DADAFRUIT_ILI9341_PITFT=ON \
		-DSPI_BUS_CLOCK_DIVISOR=6 \
		-DSTATISTICS=0"

makeinstall_target() {
  mkdir -p $INSTALL/usr/sbin
  install -m 755 $PKG_BUILD/.$TARGET_NAME/fbcp-ili9341 $INSTALL/usr/sbin/
}
