#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter namath, $(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE := libaudiocustparam
LOCAL_SRC_FILES_32 := proprietary/vendor/lib/libaudiocustparam.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libmtkcam_fwkutils
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = proprietary/vendor/lib/libmtkcam_fwkutils.so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = proprietary/vendor/lib/libdpframework.so
include $(BUILD_PREBUILT)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libstagefright_color_conversion
LOCAL_MODULE_CLASS = STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX = .a
LOCAL_UNINSTALLABLE_MODULE = true
LOCAL_MULTILIB = 32
LOCAL_SHARED_LIBRARIES_32 = libdpframework
LOCAL_SRC_FILES_32 = proprietary/libstagefright_color_conversion/libstagefright_color_conversion_32.a
include $(BUILD_PREBUILT)

endif
