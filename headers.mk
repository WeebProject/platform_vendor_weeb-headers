#
# Copyright (C) 2020 Team StormBreaker
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

HEADERS_PATH := vendor/weeb-headers

ifdef TARGET_PREBUILT_HEADERS
$(warning TARGET_PREBUILT_HEADERS was set. \
          Using prebuilt kernel headers.)

ifeq ($(TARGET_KERNEL_VERSION)),3.18)
    PRODUCT_VENDOR_KERNEL_HEADERS := $(HEADERS_PATH)/kernel-3.18/kernel-headers
ifeq ($(TARGET_KERNEL_VERSION)),4.9)
    PRODUCT_VENDOR_KERNEL_HEADERS := $(HEADERS_PATH)/kernel-4.9/kernel-headers
ifeq ($(TARGET_KERNEL_VERSION)),4.14)
    PRODUCT_VENDOR_KERNEL_HEADERS := $(HEADERS_PATH)/kernel-4.14/kernel-headers
endif
endif
endif
endif
