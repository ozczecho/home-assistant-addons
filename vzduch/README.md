# Vzduch Home Assistant Addon

[Vzduch-Dotek](https://github.com/ozczecho/vzduch-dotek) is an API to interface with an AirTouch 3 AC controller. This addon makes it super easy to get it up and running for Home Assistant.

## Installation

1. Add the following url to your Home Assistant Addons repositories (Supervisor -> Add-on store -> three dots upper right) `https://github.com/ozczecho/home-assistant-addons`
2. Install the `vzduch` addon
3. Update the configuration to match your settings
4. Click `Save`
5. Start the addon
6. Check the logs to ensure the addon started correctly


## Configuration

The following configuration options are available via the addon UI
* `airtouch_ip` - the ip address of the AirTouch 3 Controller
* `airtouch_port` - the port number of the AirTouch 3 Controller (In most cases this should be `8899`)
* `logLevel` - set the logging level. If addon is running as expected keep at `Informational`, otherwise use `Verbose` to get detailed logs.
