# societybalance
Server owners may decide to disable the previewable society balance. This is another way to obtain the balance of your society.
By sending the command `/societybalance` you will be sent a message from your financial department (if authorized).

This script looks to the available societies within `addon_account_data`. 
This script has been tested with:
- Police
- Ambulance
- Mechanic
- Taxi
- Cardealer
- Real Estate Agent

# Requirements
- [esx_addonaccount](ttps://github.com/ESX-Org/esx_addonaccount)
- [esx_society](ttps://github.com/ESX-Org/esx_society)

# Download & Installation

## Using Git
```
cd resources
git clone https://github.com/larssy1/societybalance.git
```

## Installation

- Add this to your `server.cfg`
```
start societybalance
```

# Usage
To execute the command, type `/societybalance`.

Depending on whether or not you are the owner, one of the following messages will be shown:

- If you are authorized:<br />
![alt text](https://cdn.ignitecoding.com/software/fivem/societybalance/authorized.png "Authorized")
<br /><br />
- If you are unauthorized:<br />
![alt text](https://cdn.ignitecoding.com/software/fivem/societybalance/unauthorized.png "Unauthorized")

# Legal
societybalance - preview your society balance

COPYRIGHT © 2019 - IGNITECODING - ALL RIGHTS RESERVED.
