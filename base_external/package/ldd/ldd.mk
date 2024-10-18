##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = 'e0b255e316a9c00a930a7493b8869010fce478bb'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-sota6640.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

#Build these directories with the MODULE_SUBDIRS option
LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef



#using kernel-module is just not sufficient, need generic-package as well
$(eval $(kernel-module))
$(eval $(generic-package))
