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

ifneq ($(PRODUCT_KERNEL_VERSION),$(filter $(PRODUCT_KERNEL_VERSION),3.10 4.19 5.4))
    PRODUCT_VENDOR_KERNEL_HEADERS := vendor/weeb-headers/kernel-$(PRODUCT_KERNEL_VERSION)/kernel-headers
else
    $(error TARGET_PREBUILT_HEADERS was set but PRODUCT_KERNEL_VERSION was not set.)
endif
