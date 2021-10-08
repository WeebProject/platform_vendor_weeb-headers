LOCAL_PATH:= $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

ifneq ($(TARGET_PREBUILT_HEADERS),)
$(warning TARGET_PREBUILT_HEADERS was set. \
          Using prebuilt kernel headers.)

# copy kernel headers to the build tree
$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr: $(wildcard $(PRODUCT_VENDOR_KERNEL_HEADERS)/*)
	rm -rf $@
	mkdir -p $@/include
	cp -a $(PRODUCT_VENDOR_KERNEL_HEADERS)/. $@/include

endif
