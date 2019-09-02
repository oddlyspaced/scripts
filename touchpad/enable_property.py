import subprocess
devices = list(str(subprocess.getoutput("xinput list")).split("\n"))

def find_device(tags) :
    devices = list(str(subprocess.getoutput("xinput list")).split("\n"))
    tags = list(tags)
    dtc = 0
    for device in devices :
        for tag in tags :
            if tag in device :
                dtc = dtc + 1
        if dtc == len(tags) :
            words = list(device.split(" "))
            for w in words :
                if "id=" in w :
                    id_device = list(str(w[w.index("id=") + 3:]).split("\t"))[0]
                    return int(id_device)

def enable_property(device_id, tags) :
    props = list(str(subprocess.getoutput("xinput list-props " + str(device_id))).split("\n"))
    count = 0
    for prop in props :
        for tag in tags :
            if tag in prop :
                count = count + 1
            if count == len(tags) :
                prop_id = prop[prop.index("(") + 1:prop.index(")")]
                subprocess.call("xinput set-prop " + str(device_id) + " " + str(prop_id) + " 1", shell=True)
                quit()

device_tags = ["Touchpad", "ELAN"]
prop_tags = ["Tapping", "Enabled"]
print(enable_property(find_device(device_tags), prop_tags))
