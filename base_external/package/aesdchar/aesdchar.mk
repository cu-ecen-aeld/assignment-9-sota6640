##############################################################
#
# AESDCHAR
#
##############################################################



#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESDCHAR_VERSION = '7c434497e9007c9d85df24d6498c49de457cc5a3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-sota6640.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver


define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef



#using kernel-module is just not sufficient, need generic-package as well
$(eval $(kernel-module))
$(eval $(generic-package))
