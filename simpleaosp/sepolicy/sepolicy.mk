BOARD_SEPOLICY_DIRS += \
    vendor/simpleaosp/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property.te \
    property_contexts \
    service_contexts \
    shell.te \
    su.te \
    system.te