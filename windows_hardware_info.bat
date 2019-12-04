@ECHO OFF

echo Getting operating system version
wmic os get buildnumber, caption, version, installdate, osarchitecture >> hardware.txt

echo Getting motherboard model
wmic baseboard get manufacturer, product, version >> hardware.txt

echo Getting processor model and type
wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed, status >> hardware.txt

echo Getting memory model and size
wmic memorychip get capacity, manufacturer, speed >> hardware.txt

echo Getting graphics card
wmic path win32_VideoController get Name, AdapterRAM, DriverVersion, CurrentHorizontalResolution, CurrentVerticalResolution >> hardware.txt

echo Getting drive size and type
wmic diskdrive get caption, mediatype, model, size, status, totalsectors, totalheads, totalcylinders, totaltracks, trackspercylinder >> hardware.txt
wmic logicaldisk get caption, deviceid, filesystem, freespace, name, size, volumename >> hardware.txt
