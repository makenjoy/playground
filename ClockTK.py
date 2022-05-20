# -*- coding: utf-8 -*-

import sys
import time
import subprocess
try:
    # Python2
    from Tkinter import *
except ImportError:
    # Python3
    from tkinter import *

def tick():
# Get the current local time from the PC, If time string has changed, update it
    # clock.config(text=time.strftime('%R'))  # Simple H:M
    # clock.config(text=time.strftime('%X%n%x'))
    clock.config(text=time.strftime('%H : %M%n%a %e'))

# Calls itself every 200 milliseconds to update the time display as needed
# Could use >200 ms, but display gets jerky
    clock.after(200, tick)

subprocess.run(["xrandr", "--output", "eDP-1", "--brightness", sys.argv[1]])

try:
    root = Tk()
    root.title('ClockTK')
    root.attributes("-fullscreen", True)

    clock = Label(
        root,
        font=('Ubuntu Mono, Bold', 350, 'bold'),
        # background = 'black',
        # foreground = '#6666CC'
        foreground = 'black'
    )

    clock.pack(fill=BOTH, expand=1)


    tick()
    root.mainloop()

except KeyboardInterrupt:
    subprocess.run(["xrandr", "--output", "eDP-1", "--brightness", "1"])
    print ('Caught KeyboardInterrupt')
