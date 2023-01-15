import machine
import neopixel

from wavplayer import WavPlayer

# portal colors (please use hexadecimal bytes as Python can autoparse decimal values to 32bit integers)
ORANGE_COLOR = (0xFF, 0x20, 0x00)
BLUE_COLOR = (0x00, 0x65, 0xFF)
# total number of LEDs driven
NUM_LED_STRIP = 32
# timing (high_0, low_0, high_1, low_1)
LED_STRIP_TIMING = (350, 800, 700, 600)


def orange_callback(p):
    """
    Callback for the orange button.

    :param p: Pin.
    """
    AUDIO_PLAYER.play("fire_orange.wav", loop=False)
    LED_STRIP.fill(ORANGE_COLOR)
    LED_STRIP.write()


def blue_callback(p):
    """
        Callback for the blue button.

        :param p: Pin.
        """
    AUDIO_PLAYER.play("fire_blue.wav", loop=False)
    LED_STRIP.fill(BLUE_COLOR)
    LED_STRIP.write()


# setup pins
RED_LED_PIN = machine.Pin(23, machine.Pin.OUT)
ORANGE_BTN_PIN = machine.Pin(26, machine.Pin.IN, machine.Pin.PULL_UP)
BLUE_BTN_PIN = machine.Pin(27, machine.Pin.IN, machine.Pin.PULL_UP)
LED_STRIP_PIN = machine.Pin(22, machine.Pin.OUT)
LRCLK_PIN = machine.Pin(18)
BCLK_PIN = machine.Pin(19)
AUDIO_PIN = machine.Pin(21)


# button callbacks
ORANGE_BTN_PIN.irq(trigger=machine.Pin.IRQ_FALLING, handler=orange_callback)
BLUE_BTN_PIN.irq(trigger=machine.Pin.IRQ_FALLING, handler=blue_callback)

# turn RED LEDs on
RED_LED_PIN.on()

# setup led strip
LED_STRIP = neopixel.NeoPixel(LED_STRIP_PIN, NUM_LED_STRIP, timing=LED_STRIP_TIMING)
LED_STRIP.fill(ORANGE_COLOR)
LED_STRIP.write()

# setup audio
# AUDIO_BUS = machine.I2S(0, mode=machine.I2S.TX, bits=16, format=machine.I2S.STEREO, rate=441000, ibuf=20000)
AUDIO_PLAYER = WavPlayer(id=0, sck_pin=BCLK_PIN, ws_pin=LRCLK_PIN, sd_pin=AUDIO_PIN,
                         ibuf=40000, root="/")

AUDIO_PLAYER.play("startup_sound.wav", loop=False)

# TODO implement boot animations on the strip LED
while AUDIO_PLAYER.isplaying():
    pass
