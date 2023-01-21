# Aperture Science Handheld Portal Device

This repository contains everything needed to craft your very own Portal Gun — at home! 

**WARNING: This build is in alpha state. There are a lot of issues and some tinkering may be needed to get an assembled device.**

## Repository tree

* `ashpd_firmware/`: Micropython code that runs on an ESP32. The firmware handles some lights and sound effects. A PyCharm project is included, ready to use. I use the MicroPython plug-in to quickly deploy and test my code directly from PyCharm.
* `ashpd_hardware/`: A KiCad (free and open source EDA suite) project I used to design the electronic schematic. A GIMP project (`protoboard layout.xcf`) crudely describes the disposition I picked for the components on a protoboard.
* `decals/`: Vinyl decal designs that I quickly put together. They have kind of an odd format because I sent them for manufacturing to [Sticker mule](https://www.stickermule.com/), which only accepts multiples of 25mm for the size.
* `ender3_cura`: Ultimaker Cura settings for each piece. They are tuned for my own Ender3-V2 printer, so be careful if you want to print the pieces yourself.
* `stl_files`: STL files for each piece. I'd recommend using these files if you want to print them yourself. Import them into your slicer of choice, and fine tune the settings according to what works best for you.
* `portal_gun.FCStd`: The main FreeCAD project which holds the design of each 3D printed component.

## History of the project

## Instructions manual

Coming soon...

### Materials and tools

### 3D printing

### Electronics

### Painting and decoration

### Assembly

## Aknowledgments

* Portal and the Portal logo are trademarks and/or registered trademarks of Valve Corporation. All other trademarks are property of their respective owners. © 2023 Valve Corporation. All rights reserved.
* A huge thank you to [Lucas Lombard](https://github.com/lululombard) for his advice and material support during the conception and construction of this project. I couldn't have done it without you.

## Roadmap for a V2

* Rebuild from the ground each piece (on either FreeCad or Fusion 360), being more mindful of the dependencies between each operation. The current FreeCAD file is a mess and trying to change some values can break everything.
* Add â way of atemporarily fixing each pièce together instead of relying on hot glue. Actually, the v1 uses heat sealed threaded inserts, but it was a last minute decision that was haphazardly put together. Adding pre-holes for the threaded inserts would be a plus.
* On the rear core lid: add a conduit to directly screw the handle's bottom screw, instead of hacking something with a threaded insert to correct for a design oversight.
* Adjust the tolerance, which was waaay too small: a lot of pieces have to be sanded a lot to fit together.
* Add more cake.
