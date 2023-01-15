import gc
import esp, network

# Disable debug mode
esp.osdebug(None)

# Start garbage collector
gc.collect()

# Ensure that no WLAN interface is active
network.WLAN(network.STA_IF).active(False)
network.WLAN(network.AP_IF).active(False)

