cmd_usr/include/video/.install := /bin/bash ../scripts/headers_install.sh ./usr/include/video ../include/uapi/video msm_hdmi_hdcp_mgr.h msm_hdmi_modes.h uvesafb.h edid.h sisfb.h; /bin/bash ../scripts/headers_install.sh ./usr/include/video ./include/generated/uapi/video ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/video/$$F; done; touch usr/include/video/.install