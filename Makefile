include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-adguardhome
PKG_VERSION:=1.8
PKG_RELEASE:=12

LUCI_TITLE:=LuCI Support for AdGuard Home
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+wget-ssl

PKG_MAINTAINER:=rufengsuixing <https://github.com/rufengsuixing/luci-app-adguardhome>

define Package/$(PKG_NAME)/conffiles
/usr/share/AdGuardHome/links.txt
/etc/config/AdGuardHome
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
