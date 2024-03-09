################################################################################
#
# SUFOTA
#
################################################################################

SUFOTA_VERSION = 1.0
SUFOTA_SITE = https://github.com/RanaAnwar1/SUFOTA-C
SUFOTA_SITE_METHOD = git
SUFOTA_SOURCE = main.c

define SUFOTA_BUILD_CMDS
    $(CC) $(CPPFLAGS) $(CFLAGS) -o $(@D)/main $(@D)/$(SUFOTA_SOURCE)
endef

define SUFOTA_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 755 $(@D)/main $(TARGET_DIR)/usr/bin/main
endef

$(eval $(generic-package))
