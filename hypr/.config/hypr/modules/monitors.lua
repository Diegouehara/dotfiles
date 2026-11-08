-- ==========================================
-- MONITOR CONFIGURATION
-- ==========================================

hl.monitor({
    output   = "DP-3",
    mode     = "3840x2160@239.99",
    position = "0x0",
    scale    = 1,

    -- Color configuration
    bitdepth = 10,
    cm = "hdr",

    supports_wide_color = 1,
    supports_hdr = 1,

    -- SDR content inside HDR
    sdrbrightness = 2,
    sdrsaturation = 1.5,
})
